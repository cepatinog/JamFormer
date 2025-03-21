import os
import re

# Carpeta donde están los archivos .ly
carpeta = "data/lilypond_files"  # ← Cambia esto por el path real

# Patrón de líneas que deben eliminarse
lineas_a_eliminar = [
    r"\\override Staff\.TimeSignature #'style = #'\(.*?\)",
    r"\\override Rest #'direction = #'0",
    r"\\override MultiMeasureRest #'staff-position = #0",
    r"\\override HorizontalBracket #'direction = #UP",
    r"\\override HorizontalBracket #'bracket-flare = #'\(0 \. 0\)",
    r"\\override TextSpanner #'dash-fraction = #1\.0",
    r"\\override TextSpanner #'bound-details #'left #'text = .*",
    r"\\override TextSpanner #'bound-details #'right #'text = .*"
]

# Inserta \midi { } justo después de \score {
def insertar_midi_bloque(texto):
    return re.sub(r"(\\score\s*\{)", r"\1\n  \\midi { }\n", texto, count=1)

# Limpieza de overrides y reestructuración
def procesar_archivo(ruta_archivo):
    with open(ruta_archivo, "r", encoding="utf-8") as f:
        contenido = f.read()

    # Eliminar todas las líneas no deseadas
    for patron in lineas_a_eliminar:
        contenido = re.sub(patron, '', contenido)

    # Eliminar líneas en blanco múltiples
    contenido = re.sub(r'\n\s*\n+', '\n\n', contenido)

    # Insertar bloque \midi { }
    contenido = insertar_midi_bloque(contenido)

    # Guardar el archivo sobrescribiéndolo
    with open(ruta_archivo, "w", encoding="utf-8") as f:
        f.write(contenido)
    print(f"Procesado: {ruta_archivo}")

# Recorrer todos los archivos .ly en la carpeta
for archivo in os.listdir(carpeta):
    if archivo.endswith(".ly"):
        ruta_completa = os.path.join(carpeta, archivo)
        procesar_archivo(ruta_completa)
