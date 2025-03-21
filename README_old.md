# Proyecto de Generación de Melodías de Jazz

Este proyecto tiene como objetivo crear un sistema de generación de 
melodías de jazz usando la base de datos Weimar Jazz Database.

## Estructura de Carpetas

- `data/`
  - `raw/`: Datos originales
  - `processed/`: Datos procesados
- `notebooks/`
  - Notebooks para exploración y prototipado
- `src/`
  - `configs/`: Archivos de configuración
  - `preprocessing/`: Scripts de preprocesamiento
  - `models/`: Definición de arquitecturas de redes neuronales
  - `training/`: Scripts y utilidades de entrenamiento
  - `generation/`: Generación de melodías una vez entrenado el modelo
  - `evaluation/`: Evaluación de resultados
- `scripts/`
  - Scripts para automatizar tareas (ej. entrenamiento, despliegue, etc.)

## Cómo usar

1. Clonar el repositorio / descargar el proyecto.
2. Instalar dependencias: `pip install -r requirements.txt` (cuando exista).
3. Ajustar configuraciones en `src/configs/`.
4. Ejecutar el entrenamiento y la generación.

¡Disfruta explorando y extendiendo este proyecto!
