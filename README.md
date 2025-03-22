# 🎵 Chord-Conditioned Melody Generation with CMT Transformer

This project explores **semi-real-time symbolic music generation**, using a **Chord-Conditioned Melody Transformer (CMT)** model. The goal is to generate melodies based on chord progressions, train models, and send generated melodies to **Ableton Live** via a virtual MIDI port (`loopMIDI`).

---

## 📌 Project Structure
```
MY_JAZZ_PROJECT/
├── notebooks/               # Jupyter Notebooks for experiments and visualization
│   ├── melody_generator.ipynb  # Main notebook for melody generation
│   ├── midi_pkl_visualizer.ipynb  # Visualization of MIDI and PKL files
├── src/                     # Source code
│   ├── dataset.py
│   ├── layers.py
│   ├── loss.py
│   ├── model.py             # CMT model definition
│   ├── preprocess.py        # Converts MIDI files to PKL format
│   ├── run.py               # Main training script
│   ├── send_generated_melody.py  # Sends generated melodies to Windows
│   ├── socket_client.py     # Client to communicate with Windows MIDI server
│   ├── trainer.py           # Training utilities
├── utils/                   # Helper functions
│   ├── fix_lilypond.py      # Cleans LilyPond files before MIDI conversion
│   ├── logger.py
│   ├── metrics.py
│   ├── swap_midi_tracks.py  # Fixes incorrect MIDI track order
│   ├── tf_logger.py
│   ├── utils.py
├── results/                 # Generated results
├── data/                    # MIDI and PKL datasets
├── README.md                # This file
└── requirements.txt         # Python dependencies
```

---

## 🚀 Step-by-Step Process

### **1️⃣ Preparing MIDI Data**

1. **Cleaning LilyPond Files**
   - Before converting **LilyPond (`.ly`)** files into MIDI, we cleaned unnecessary overrides using `fix_lilypond.py`:

    ```bash
     python utils/fix_lilypond.py 
    ```
2.  **Batch Rendering** `.ly` Files with LilyPond from the Terminal

    - You can automate the rendering of all `.ly` files in a folder using **LilyPond** directly from the terminal. Here's how:

    ```bash
    cd /path/to/your/files
    lilypond *.ly
    ```

3. **Rename** `.midi` to `.mid` with find (Bash)

    ```bash
    find /path/to/your/midis -type f -name "*.midi" -exec bash -c 'mv "$0" "${0%.midi}.mid"' {} \;
    ```

4. **Moving MIDI Files** into Subfolders:
the preprocess.py script expects MIDI files to be located inside subfolders, one per song.
We can organize them automatically with the following command:

    ```bash
    mkdir -p ./data/midi_files/WjazzD/organized
    for f in ./data/midi_files/WjazzD/*.mid; do
        name=$(basename "$f" .mid)
        mkdir "./data/midi_files/WjazzD/organized/$name"
        mv "$f" "./data/midi_files/WjazzD/organized/$name/"
    done
    ```

2. **Fixing MIDI Tracks**
   - Some MIDI files had incorrect track ordering. We used `swap_midi_tracks.py` to ensure:
     - **Track 0** contains chords.
     - **Track 1** contains the melody.
   - Command:
     ```bash
     python src/swap_midi_tracks.py --input_dir data/midi_files --output_dir data/swapped_midis
     ```

2. **Preprocessing MIDI into PKL Format**
   - Convert fixed MIDI files into **PKL format** required for training.
   - Command:
     ```bash
     python src/preprocess.py --root_dir data --midi_dir swapped_midis
     ```



---

### **2️⃣ Training the Model**

#### **Phase 1: Rhythm Decoder Training**
- Train the model to generate rhythm first.
- Command:
  ```bash
  python src/run.py --idx 1 --gpu_index 0 --ngpu 1 --optim_name adam --restore_epoch 0
  ```

#### **Phase 2: Pitch Decoder Training**
- Uses the trained rhythm model to generate melodies.
- Command:
  ```bash
  python src/run.py --idx 2 --gpu_index 0 --ngpu 1 --restore_epoch 30 --load_rhythm
  ```

---

### **3️⃣ Generating Melodies**

1. **Load the Trained Model**
   ```python
   import torch
   from src.model import ChordConditionedMelodyTransformer
   model = torch.load("results/model/checkpoint_30.pth.tar", map_location="cpu")
   model.eval()
   ```

2. **Load PKL File and Modify Chords**
   ```python
   import pickle
   with open("data/preprocessed/example.pkl", "rb") as f:
       data = pickle.load(f)
   
   data["chord"][:4] = [
       [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],  # C Major
       [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0],  # G Major
       [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0],  # A minor
       [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0]   # F Major
   ]
   ```

3. **Run Inference to Generate Melody**
   ```python
   with torch.no_grad():
       generated = model.sampling(prime_rhythm, prime_pitch, chord_tensor, topk=5)
   ```

4. **Convert to MIDI**
   ```python
   import pretty_midi
   midi = pretty_midi.PrettyMIDI()
   instrument = pretty_midi.Instrument(program=0, name='Generated Melody')
   for t, note in enumerate(generated["pitch"][0]):
       if note < 48:
           instrument.notes.append(pretty_midi.Note(start=t*0.25, end=(t+1)*0.25, pitch=note+60, velocity=100))
   midi.instruments.append(instrument)
   midi.write("generated_melody.mid")
   ```

---

### **4️⃣ Sending Generated Melodies to Windows (Ableton Live)**

1. **Start the Windows MIDI Server**
   ```bash
   python src/midi_server.py
   ```

2. **Send MIDI from WSL to Windows**
   ```python
   from src.socket_client import send_melody_to_windows
   send_melody_to_windows(generated_melody)
   ```

3. **Use loopMIDI to route to Ableton Live**
   - Ensure **loopMIDI** is running and a virtual port is created.
   - In **Ableton Live**, select **loopMIDI** as the MIDI input.

---

## 📜 Requirements
```bash
pip install -r requirements.txt
```

---

## 🔥 Future Work
- Improve real-time inference speed.
- Experiment with different chord conditioning techniques.
- Expand the dataset with more jazz progressions.

---

## 🎯 References
- "Chord Conditioned Melody Generation with Transformer Based Decoders" ([IEEE Paper](https://ieeexplore.ieee.org/document/9376975))
- [pretty_midi](https://github.com/craffel/pretty-midi)

---

## 🚀 Author
Carlos Patiño - Musician / AI & Music Researcher


