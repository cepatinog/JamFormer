import os
import pretty_midi
from glob import glob

# CONFIGURATION
MIDI_ROOT = 'data/midi_files/WjazzD/organized'  # Change this path if you have a different structure
OUTPUT_DIR = 'data/midi_files/WjazzD/swapped'
os.makedirs(OUTPUT_DIR, exist_ok=True)

# FUNCTION TO SWAP THE FIRST TWO TRACKS
def swap_first_two_tracks(midi_path, output_path):
    try:
        midi = pretty_midi.PrettyMIDI(midi_path)
        if len(midi.instruments) >= 2:
            midi.instruments[0], midi.instruments[1] = midi.instruments[1], midi.instruments[0]
            midi.write(output_path)
            print(f"✅ Swapped: {os.path.basename(midi_path)}")
        else:
            print(f"⚠️  File has fewer than 2 tracks: {os.path.basename(midi_path)}")
    except Exception as e:
        print(f"❌ Error processing {midi_path}: {e}")

# SEARCH AND PROCESSING
midi_files = glob(os.path.join(MIDI_ROOT, '**/*.mid'), recursive=True)

print(f"Found {len(midi_files)} MIDI files")
for midi_path in midi_files:
    relative_path = os.path.relpath(midi_path, MIDI_ROOT)
    output_path = os.path.join(OUTPUT_DIR, relative_path)
    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    swap_first_two_tracks(midi_path, output_path)

print("\n Process completed.")
