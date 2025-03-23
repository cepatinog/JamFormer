
import argparse
import torch
import numpy as np
import sys
import os
sys.path.append(".")

from model import ChordConditionedMelodyTransformer
from utils.utils import pitch_to_midi
import utils.chord_library as chords


def load_model(checkpoint_path, config):
    checkpoint = torch.load(checkpoint_path, map_location="cpu")
    model = ChordConditionedMelodyTransformer(**config)
    model.load_state_dict(checkpoint["model"])
    model.eval()
    return model


def generate(chord_prog, output_path, model, config, topk=3):
    frames_per_bar = config["frame_per_bar"]
    matrix = chords.chord_progression_to_matrix(chord_prog, frames_per_chord=frames_per_bar)
    chord_tensor = torch.tensor(matrix).unsqueeze(0).float()

    prime_rhythm = torch.zeros((1, 0), dtype=torch.long)
    prime_pitch = torch.zeros((1, 0), dtype=torch.long)

    with torch.no_grad():
        result = model.sampling(prime_rhythm, prime_pitch, chord_tensor, topk=topk)

    pitch = result["pitch"][0].numpy()
    rhythm = result["rhythm"][0].numpy()

    instruments = pitch_to_midi(pitch, chord_tensor.squeeze(0).numpy(), frame_per_bar=frames_per_bar, save_path=output_path)
    print(f"✅ Saved: {output_path}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Chord-conditioned melody generator")
    parser.add_argument("--checkpoint", type=str, required=True, help="Path to model checkpoint")
    parser.add_argument("--output", type=str, default="generated.mid", help="Path to save MIDI file")
    parser.add_argument("--progression", type=str, nargs="+", required=True,
                        help="Chord progression using Roman numerals (e.g., I vi ii7 V7)")
    parser.add_argument("--topk", type=int, default=3, help="Top-k sampling for pitch prediction")
    args = parser.parse_args()

    # Model config (could also be loaded from YAML)
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

    model = load_model(args.checkpoint, model_config)
    generate(args.progression, args.output, model, model_config, topk=args.topk)
