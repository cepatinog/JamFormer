#!/usr/bin/env python3

import os
import re

# Folder where the .ly files are located
folder = "data/lilypond_files"  # ← Change this if needed

# Pattern of lines that should be removed
lines_to_remove = [
    r"\\override Staff\.TimeSignature #'style = #'\(.*?\)",
    r"\\override Rest #'direction = #'0",
    r"\\override MultiMeasureRest #'staff-position = #0",
    r"\\override HorizontalBracket #'direction = #UP",
    r"\\override HorizontalBracket #'bracket-flare = #'\(0 \. 0\)",
    r"\\override TextSpanner #'dash-fraction = #1\.0",
    r"\\override TextSpanner #'bound-details #'left #'text = .*",
    r"\\override TextSpanner #'bound-details #'right #'text = .*"
]

# Insert \midi { } right after \score {
def insert_midi_block(text):
    return re.sub(r"(\\score\s*\{)", r"\1\n  \\midi { }\n", text, count=1)

# Cleanup overrides and restructure
def process_file(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Remove all unwanted lines
    for pattern in lines_to_remove:
        content = re.sub(pattern, '', content)

    # Remove multiple blank lines
    content = re.sub(r'\n\s*\n+', '\n\n', content)

    # Insert \midi { } block
    content = insert_midi_block(content)

    # Save the file, overwriting it
    with open(file_path, "w", encoding="utf-8") as f:
        f.write(content)
    print(f"Processed: {file_path}")

# Iterate through all .ly files in the folder
def main():
    for filename in os.listdir(folder):
        if filename.endswith(".ly"):
            full_path = os.path.join(folder, filename)
            process_file(full_path)

if __name__ == "__main__":
    main()
