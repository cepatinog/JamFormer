# generate_and_send.py

import argparse
import torch
import numpy as np
import json
import socket
import subprocess
import sys
sys.path.append(".")

from model import ChordConditionedMelodyTransformer
from utils.utils import rhythm_to_symbol_list
import utils.chord_library as chords

def detect_windows_ip():
    try:
        result = subprocess.run(["ip", "route"], capture_output=True, text=True, check=True)
        for line in result.stdout.splitlines():
            if line.startswith("default via"):
                return line.split()[2]
    except Exception as e:
        print(f"Could not auto-detect Windows IP: {e}")
    return "127.0.0.1"

def send_melody_to_windows(note_sequence, port=5005):
    host = detect_windows_ip()
    print(f"📡 Connecting to Windows at {host}:{port}...")
    message = json.dumps({"notes": note_sequence})
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((host, port))
        s.sendall(message.encode())
        print("🎶 Melody sent to Windows!")


def load_model(checkpoint_path, config):
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    checkpoint = torch.load(checkpoint_path, map_location=device)
    model = ChordConditionedMelodyTransformer(**config)
    model.load_state_dict(checkpoint["model"])
    model.to(device)
    model.eval()
    return model, device

def convert_to_note_sequence(pitch, rhythm, frame_per_bar=16, bpm=120, base_midi_note=60, pitch_hold_token=48, pitch_rest_token=49):
    frame_per_second = (frame_per_bar / 4) * (bpm / 60)
    unit_time = 1 / frame_per_second

    sequence = []
    note_on = None

    for t, (p, r) in enumerate(zip(pitch, rhythm)):
        time_now = t * unit_time

        if r == 0:  # rest
            if note_on:
                sequence.append({
                    "pitch": int(note_on["pitch"]),
                    "velocity": 100,
                    "duration": round(float(time_now - note_on["start"]), 3)
                })
                note_on = None
            continue

        if r == 1:  # hold
            continue

        if r == 2:  # onset
            if note_on:
                sequence.append({
                    "pitch": int(note_on["pitch"]),
                    "velocity": 100,
                    "duration": round(float(time_now - note_on["start"]), 3)
                })
            if p < pitch_hold_token:
                note_on = {
                    "pitch": int(base_midi_note + p),
                    "start": float(time_now)
                }
            else:
                note_on = None

    if note_on:
        sequence.append({
            "pitch": int(note_on["pitch"]),
            "velocity": 100,
            "duration": round(float((len(pitch) * unit_time) - note_on["start"]), 3)
        })

    return sequence


def generate_and_send(prog, checkpoint_path, config, device, topk=3, bpm=120):
    frames_per_bar = config["frame_per_bar"]
    chord_mat = chords.chord_progression_to_matrix(prog, frames_per_chord=frames_per_bar)

    chord_tensor = torch.tensor(chord_mat).unsqueeze(0).float().to(device)
    # prime_rhythm = torch.zeros((1, 0), dtype=torch.long).to(device)
    prime_pitch = torch.zeros((1, 0), dtype=torch.long).to(device) # no meloy

    prime_rhythm_tokens = [2, 1, 1, 1]  # negra
    #prime_pitch_tokens = [12, 12, 12, 12]   # C4 
    prime_rhythm = torch.tensor([prime_rhythm_tokens], dtype=torch.long).to(device)
    #prime_pitch  = torch.tensor([prime_pitch_tokens], dtype=torch.long).to(device)
    
    with torch.no_grad():
        result = model.sampling(prime_rhythm, prime_pitch, chord_tensor, topk=topk)

    pitch = result["pitch"][0].cpu().numpy()
    rhythm = result["rhythm"][0].cpu().numpy()

    note_sequence = convert_to_note_sequence(pitch, rhythm, frame_per_bar=frames_per_bar, bpm=bpm)
    send_melody_to_windows(note_sequence)

# CLI
if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--checkpoint", required=True, help="Path to model checkpoint")
    parser.add_argument("--progression", nargs="+", required=True, help="Chord progression in Roman numerals (e.g. I vi ii7 V7)")
    parser.add_argument("--topk", type=int, default=3)
    parser.add_argument("--bpm", type=int, default=120)
    args = parser.parse_args()

    # Must match training config
    model_config = {
        "num_pitch": 50,
        "frame_per_bar": 16,
        "num_bars": 8,
        "chord_emb_size": 128,
        "pitch_emb_size": 256,
        "hidden_dim": 512,
        "key_dim": 512,
        "value_dim": 512,
        "num_layers": 8,
        "num_heads": 16,
        "input_dropout": 0.2,
        "layer_dropout": 0.2,
        "attention_dropout": 0.2
    }

    #generate_and_send(args.progression, args.checkpoint, model_config, args.topk, args.bpm)

    model, device = load_model(args.checkpoint, model_config)
    generate_and_send(
        prog=args.progression,
        checkpoint_path=args.checkpoint,
        config=model_config,
        device=device,
        topk=args.topk,
        bpm=args.bpm
    )