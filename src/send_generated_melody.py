import pickle
import numpy as np
from socket_client import send_melody_to_windows
import os

# === Config ===
pkl_path = "results/idx002/sampling_results/epoch_060/epoch060_sample03.pkl"  # Cambia esto si lo necesitas
frame_duration = 0.125  # 16th note at 120 BPM ≈ 0.125s por frame
velocity = 100

# === Cargar archivo .pkl ===
with open(pkl_path, 'rb') as f:
    data = pickle.load(f)

pitch_seq = data["pitch"]
rhythm_seq = data["rhythm"]

# === Convertir a formato reproducible ===
notes = []
curr_duration = 0

for i, (pitch, rhythm) in enumerate(zip(pitch_seq, rhythm_seq)):
    if rhythm == 1:
        # Inicio de nueva nota
        if curr_duration > 0 and notes:
            notes[-1]["duration"] = round(curr_duration * frame_duration, 3)
        notes.append({"pitch": int(pitch), "velocity": velocity, "duration": 0})
        curr_duration = 1
    elif rhythm == 2:
        curr_duration += 1
    else:
        # silence or padding
        if curr_duration > 0 and notes:
            notes[-1]["duration"] = round(curr_duration * frame_duration, 3)
        curr_duration = 0

# Completa duración de la última nota si es necesario
if curr_duration > 0 and notes:
    notes[-1]["duration"] = round(curr_duration * frame_duration, 3)

# Filtrar notas inválidas (por ejemplo 48–49 son símbolos internos en CMT)
notes = [n for n in notes if 0 <= n["pitch"] <= 127 and n["duration"] > 0]

print(f"🎼 Notas generadas: {len(notes)}")
for n in notes:
    print(n)

# === Enviar a Windows ===
send_melody_to_windows(notes)
