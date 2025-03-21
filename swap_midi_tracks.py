import os
import pretty_midi
from glob import glob

# === CONFIGURACIÓN ===
MIDI_ROOT = 'data/midi_files/WjazzD/organized'  # Cambia esta ruta si tuvieras otra estructura
OUTPUT_DIR = 'data/midi_files/WjazzD/swapped'
os.makedirs(OUTPUT_DIR, exist_ok=True)

# === FUNCIÓN PARA INTERCAMBIAR LAS DOS PRIMERAS PISTAS ===
def swap_first_two_tracks(midi_path, output_path):
    try:
        midi = pretty_midi.PrettyMIDI(midi_path)
        if len(midi.instruments) >= 2:
            midi.instruments[0], midi.instruments[1] = midi.instruments[1], midi.instruments[0]
            midi.write(output_path)
            print(f"✅ Intercambiado: {os.path.basename(midi_path)}")
        else:
            print(f"⚠️  Archivo con menos de 2 pistas: {os.path.basename(midi_path)}")
    except Exception as e:
        print(f"❌ Error al procesar {midi_path}: {e}")

# === BÚSQUEDA Y PROCESAMIENTO ===
midi_files = glob(os.path.join(MIDI_ROOT, '**/*.mid'), recursive=True)

print(f"Encontrados {len(midi_files)} archivos MIDI")
for midi_path in midi_files:
    relative_path = os.path.relpath(midi_path, MIDI_ROOT)
    output_path = os.path.join(OUTPUT_DIR, relative_path)
    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    swap_first_two_tracks(midi_path, output_path)

print("\n🎉 Proceso completado.")
