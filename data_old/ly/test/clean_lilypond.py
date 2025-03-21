import os

# Líneas problemáticas a eliminar
problematic_patterns = [
    "\\override Staff.TimeSignature",
    "\\override Rest",
    "\\override MultiMeasureRest",
    "\\override HorizontalBracket",
    "\\override TextSpanner"
]

def clean_lilypond_file(file_path):
    with open(file_path, "r", encoding="utf-8") as file:
        lines = file.readlines()

    cleaned_lines = []
    in_score_block = False
    midi_added = False

    for i, line in enumerate(lines):
        # Eliminar líneas problemáticas
        if any(pattern in line for pattern in problematic_patterns):
            continue

        # Detectar el inicio de `\score`
        if "\\score" in line:
            in_score_block = True
            cleaned_lines.append(line)
            continue

        # Insertar `\midi { }` correctamente después de `{`
        if in_score_block and not midi_added and "{" in line.strip():
            cleaned_lines.append("  \\midi { }\n\n")
            midi_added = True
        
        cleaned_lines.append(line)

    # Guardar el archivo corregido
    cleaned_file_path = file_path.replace(".ly", "_CLEANED.ly")
    with open(cleaned_file_path, "w", encoding="utf-8") as cleaned_file:
        cleaned_file.writelines(cleaned_lines)

    print(f"✅ Archivo corregido: {cleaned_file_path}")

# Procesar todos los archivos .ly en la carpeta actual
folder_path = os.getcwd()
for filename in os.listdir(folder_path):
    if filename.endswith(".ly") and not filename.endswith("_CLEANED.ly"):
        clean_lilypond_file(os.path.join(folder_path, filename))

print("🎵 ¡Todos los archivos LilyPond han sido corregidos y preparados para MIDI!")
