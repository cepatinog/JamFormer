# 🎵 JamFormer: Chord-Conditioned Melody Generation with CMT Transformer

This project explores **semi-real-time symbolic music generation** using a **Chord-Conditioned Melody Transformer (CMT)** model. The goal is to generate melodies based on chord progressions, train rhythm and pitch decoders, and send generated melodies to **Ableton Live** via a virtual MIDI port (`loopMIDI`).

---

## 📌 Project Structure
```
MY_JAZZ_PROJECT/
├── data/
│   ├── lilypond_files/           # Original .ly source files
│   ├── mid_files/                # MIDI files organized per song
│   ├── pkl_files/                # Processed datasets for training (with and without shift)
│   └── raw/                      # Optional raw input data
│
├── notebooks/                   # Jupyter Notebooks for experimentation and visualization
│   ├── melody_generator.ipynb       # Interactive melody generation
│   ├── midi_pkl_visualizer.ipynb   # Visual analysis of MIDI/PKL data
│   ├── pitch_range.ipynb   # Analysis of pitch range
│   ├── transpose_music21.ipynb   # Transpose midis to C or Am
│
├── results/
│   ├── idx001/                   # Training output for rhythm decoder
│   └── idx002/                   # Training output for pitch decoder
│       ├── model/
│       ├── sampling_results/
│       ├── tensorboard/
│       ├── hparams.yaml
│       └── log.txt
│
├── src/
│   ├── dataset.py
│   ├── layers.py
│   ├── loss.py
│   ├── model.py                 # CMT Transformer model
│   ├── preprocess.py            # MIDI to PKL converter
│   ├── run.py                   # Training entry point
│   ├── socket_client.py         # Sends melodies to Windows via socket
│   ├── trainer.py               # Model trainer
│
├── utils/
│   ├── fix_lilypond.py          # Cleans LilyPond overrides
│   ├── hparams.py
│   ├── logger.py
│   ├── metrics.py
│   ├── swap_midi_tracks.py      # Ensures correct MIDI track order
│   ├── tf_logger.py
│   └── utils.py
│
├── requirements.txt             # Python dependencies
└── README.md                    # This file
```

---

## 🚀 Step-by-Step Process

### ✨ 1. Preparing MIDI Data

#### 1.1 Cleaning LilyPond Files
Before converting **LilyPond (`.ly`)** files into MIDI, unnecessary overrides were cleaned using `fix_lilypond.py`:
```bash
python utils/fix_lilypond.py 
```

#### 1.2 Batch Rendering `.ly` Files
Use **LilyPond** to render all `.ly` files in a folder:
```bash
cd /path/to/your/files
lilypond *.ly
```

#### 1.3 Renaming `.midi` to `.mid`
```bash
find /path/to/your/midis -type f -name "*.midi" -exec bash -c 'mv "$0" "${0%.midi}.mid"' {} \;
```

#### 1.4 Organizing MIDI Files into Subfolders
```bash
mkdir -p ./data/midi_files/WjazzD_C_Am/organized
for f in ./data/midi_files/WjazzD_C_Am/*.mid; do
    name=$(basename "$f" .mid)
    mkdir "./data/midi_files/WjazzD_C_Am/organized/$name"
    mv "$f" "./data/midi_files/WjazzD_C_Am/organized/$name/"
done
```

#### 1.5 Fixing Track Order in MIDI Files
Some MIDI files had incorrect track order. We used `swap_midi_tracks.py` to ensure:
- **Track 0** contains chords
- **Track 1** contains melody
```bash
python src/swap_midi_tracks.py --input_dir data/midi_files --output_dir data/swapped_midis
```

---

### 🌟 2. Transposing All Melodies to C or A Minor
To train the pitch decoder effectively, we normalized all files to a common key:

- Files in **major keys** were transposed to **C major**
- Files in **minor keys** were transposed to **A minor**
- After transposition, we adjusted octaves so the melodies stay within the model's expected pitch range (MIDI 48 to 95)

This process was done with a custom script using `music21`. 
Check `transpose_music21.ipynb`
---

### ⚙️ 3. Preprocessing to PKL Format
We used `preprocess.py` to convert MIDI files into training-ready `.pkl` instances.

#### Rhythm Dataset (with key shift to all 12 keys):
```bash
python src/preprocess.py \
  --root_dir data \
  --midi_dir midi_files/swapped_midis \
  --num_bars 8 \
  --frame_per_bar 16 \
  --pitch_range 48 \
  --shift
```

#### Pitch Dataset (transposed to C/Am, no shift):
```bash
python src/preprocess.py \
  --root_dir data \
  --midi_dir midi_files/WjazzD_C_Am \
  --num_bars 8 \
  --frame_per_bar 16 \
  --pitch_range 48
```

---

### 🚀 4. Training the Model

#### Phase 1: Rhythm Decoder Training
Train the model using the 12-key-shifted dataset.
```bash
python src/run.py \
  --idx 1 \
  --gpu_index 0 \
  --ngpu 1 \
  --seed 42
```

#### Phase 2: Pitch Decoder Training
Use the transposed-to-C/Am dataset and load the rhythm model from phase 1.
```bash
python src/run.py \
  --idx 2 \
  --gpu_index 0 \
  --ngpu 1 \
  --seed 42 \
  --load_rhythm
```

---

### 🎼 5. Melody Generation via Inference
After training the model, we can generate new 8-bar melodies conditioned on a custom chord progression using the trained Chord-Conditioned Melody Transformer (CMT).

#### 5.1 Generating a Melody from Chords
We use the script infer_custom_progression.py to generate a melody based on a chord progression expressed in Roman numerals.

```bash
python infer_custom_progression.py \
  --checkpoint results/idx002/model/checkpoint_100.pth.tar \
  --output generated.mid \
  --progression I vi ii7 V7 I V7 viiø7 I7 \
  --topk 3
```

#### 5.2 How It Works
The model loads the specified checkpoint (must contain both rhythm and pitch decoders trained).
The chord progression (e.g., I vi ii7 V7) is converted to a 12D chord vector matrix using `utils/chord_library.py.`

The model starts generation from scratch using empty prime tokens.
The melody is generated auto-regressively, predicting rhythm first and then pitch.

A `.mid` file is created with:

- Track 0: The generated monophonic melody

- Track 1: Chord blocks matching the progression

#### 5.3 Top-k Sampling
You can control the creativity and variability of the pitch decoder using the --topk flag.

- --topk 1: Greedy (argmax) decoding

- --topk 3 (default): Moderate variation

- --topk 5+: Higher variation

### 🧠 6. Conditioning the Start of a Melody
To control the initial musical idea, you can prime the model with a specific note and duration. For example, starting the generated melody with a **quarter note C4**:

- If your model uses `base_midi_note = 48`, then `C4 = MIDI 60` corresponds to pitch token `12`.
- A quarter note in a 16-frames-per-bar setting equals `[2, 1, 1, 1]` (onset + 3 holds).

Modify the priming section in `generate_and_send.py`:

```python
prime_rhythm_tokens = [2, 1, 1, 1]  # quarter note
prime_pitch_tokens = [12, 12, 12, 12]  # C4

prime_rhythm = torch.tensor([prime_rhythm_tokens], dtype=torch.long).to(device)
prime_pitch = torch.tensor([prime_pitch_tokens], dtype=torch.long).to(device)
```

This way, the model will generate melodies that continue from that initial C4 note.

---

### 🖧 7. Real-Time Playback via Socket (WSL to Windows)
WSL lacks native MIDI or GUI support, so we implemented a **client-server architecture** to stream generated melodies to Windows using sockets.

#### 7.1 Architecture
- **WSL Client (`socket_client.py`)**: Sends a JSON-formatted note sequence to Windows
- **Windows Server (`midi_server.py`)**: Listens for messages and plays them via `mido` and `loopMIDI`

```bash
# In WSL
python generate_and_send.py --checkpoint ... --progression I IV V7 I7

# In Windows (server)
python midi_server.py
```

#### 7.2 Buffering Melodies for Manual Trigger
In the extended version `midi_server_multi.py`, incoming melodies are stored in an internal list of buffers rather than being played immediately.

- Each incoming melody is stored as `buffer[i]`
- Press `p 0`, `p 1`, etc. in the Windows console to manually trigger playback

```bash
📥 Stored melody [0] with 56 notes.
📥 Stored melody [1] with 64 notes.
```

```bash
> p 1  # plays melody 1
> q    # quits the server
```

---

### ⚡ 8. GPU-Accelerated Inference
By default, `generate_and_send.py` and `infer_custom_progression.py` detect whether CUDA is available:

```python
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
model.to(device)
chord_tensor = chord_tensor.to(device)
```

To ensure tensors and model weights are on the same device, all inputs must be explicitly `.to(device)`.

You can now generate faster and scale to longer sequences or batch generation using GPU acceleration.

---

