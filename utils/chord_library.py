
import numpy as np

# Mapping from note names to semitone numbers
NOTE_TO_SEMITONE = {
    'C': 0, 'C#': 1, 'Db': 1,
    'D': 2, 'D#': 3, 'Eb': 3,
    'E': 4, 'Fb': 4, 'E#': 5,
    'F': 5, 'F#': 6, 'Gb': 6,
    'G': 7, 'G#': 8, 'Ab': 8,
    'A': 9, 'A#': 10, 'Bb': 10,
    'B': 11, 'Cb': 11
}

# Diatonic chord formulas
CHORD_QUALITIES = {
    'maj': [0, 4, 7],
    'min': [0, 3, 7],
    'dim': [0, 3, 6],
    'maj7': [0, 4, 7, 11],
    'min7': [0, 3, 7, 10],
    '7': [0, 4, 7, 10],
    'dim7': [0, 3, 6, 9],
    'm7b5': [0, 3, 6, 10]
}

# Roman numeral mapping (for C major and A minor as examples)
ROMAN_TO_DEGREES = {
    'I':    ('C', 'maj'),
    'ii':   ('D', 'min'),
    'iii':  ('E', 'min'),
    'IV':   ('F', 'maj'),
    'V':    ('G', 'maj'),
    'vi':   ('A', 'min'),
    'vii°': ('B', 'dim'),
    'I7':   ('C', '7'),
    'ii7':  ('D', 'min7'),
    'iii7': ('E', 'min7'),
    'IV7':  ('F', 'maj7'),
    'V7':   ('G', '7'),
    'vi7':  ('A', 'min7'),
    'viiø7': ('B', 'm7b5'),

    'i':    ('A', 'min'),
    'ii°':  ('B', 'dim'),
    'III':  ('C', 'maj'),
    'iv':   ('D', 'min'),
    'v':    ('E', 'min'),
    'VI':   ('F', 'maj'),
    'VII':  ('G', 'maj'),
    'i7':   ('A', 'min7'),
    'iiø7': ('B', 'm7b5'),
    'III7': ('C', 'maj7'),
    'iv7':  ('D', 'min7'),
    'v7':   ('E', 'min7'),
    'VI7':  ('F', 'maj7'),
    'VII7': ('G', '7')
}

def chord_vector_from_formula(root_name: str, quality: str) -> np.ndarray:
    root = NOTE_TO_SEMITONE[root_name]
    intervals = CHORD_QUALITIES[quality]
    vec = np.zeros(12)
    for i in intervals:
        vec[(root + i) % 12] = 1
    return vec

def roman_to_chord_vector(roman: str) -> np.ndarray:
    if roman not in ROMAN_TO_DEGREES:
        raise ValueError(f"Unknown Roman numeral: {roman}")
    root_name, quality = ROMAN_TO_DEGREES[roman]
    return chord_vector_from_formula(root_name, quality)

def chord_progression_to_matrix(prog: list[str], frames_per_chord=16) -> np.ndarray:
    total_frames = len(prog) * frames_per_chord
    chord_matrix = np.zeros((total_frames, 12))
    for i, roman in enumerate(prog):
        vec = roman_to_chord_vector(roman)
        chord_matrix[i * frames_per_chord:(i + 1) * frames_per_chord] = vec
    return chord_matrix
