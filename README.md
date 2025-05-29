# TensorFlow GPU Docker Environment

Un entorno de desarrollo simple para TensorFlow con aceleración GPU usando Docker y Jupyter Lab.

## Requisitos

- Docker Desktop con WSL2 (Windows) o Docker (Linux/Mac)
- GPU NVIDIA compatible con CUDA
- Drivers NVIDIA actualizados

## Estructura del proyecto

```
tensorflow-gpu-docker/
├── docker-compose.yml     # Configuración de servicios
├── .gitignore            # Archivos ignorados por Git
├── notebooks/            # Jupyter notebooks
├── data/                 # Datasets (no versionado)
├── models/              # Modelos entrenados (no versionado)
├── outputs/             # Resultados y gráficos (no versionado)
└── src/                 # Scripts Python
```

## Instalación y uso

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/TU_USUARIO/tensorflow-gpu-docker.git
   cd tensorflow-gpu-docker
   ```

2. **Crear las carpetas necesarias:**
   ```bash
   mkdir -p data models outputs
   ```

3. **Levantar el entorno:**
   ```bash
   docker compose up -d
   ```

4. **Acceder a Jupyter Lab:**
   - URL: http://localhost:8888
   - Token: `tensorflow123`

5. **Conectar VSCode (opcional):**
   - Instalar extensión "Dev Containers"
   - Ctrl+Shift+P → "Dev Containers: Attach to Running Container"
   - Seleccionar `tensorflow-gpu`

## Comandos útiles

```bash
# Levantar servicios
docker compose up -d

# Ver logs
docker compose logs -f

# Acceder al contenedor
docker compose exec tensorflow bash

# Parar servicios
docker compose down

# Reconstruir imagen
docker compose up --build -d
```

## Librerías incluidas

- TensorFlow 2.15.0 (con GPU)
- Jupyter Lab
- NumPy, Pandas, Matplotlib
- Scikit-learn, Seaborn, Plotly
- OpenCV, Pillow
- Y más...

## Notas importantes

- Los datos, modelos y outputs **no se suben a Git** por su tamaño
- Coloca tus datasets en la carpeta `data/`
- Los modelos entrenados se guardan en `models/`
- Los notebooks van en `notebooks/`
- Los scripts Python van en `src/`

## Licencia

MIT License - ver archivo [LICENSE](LICENSE) para detalles.