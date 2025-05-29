FROM tensorflow/tensorflow:2.15.0-gpu

# Actualizar sistema e instalar dependencias básicas
RUN apt-get update && apt-get install -y \
    git \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Actualizar pip
RUN pip install --upgrade pip

# Directorio de trabajo
WORKDIR /app

# Copiar e instalar dependencias Python
COPY requirements.txt .
RUN pip install -r requirements.txt

# Crear directorios de trabajo
RUN mkdir -p notebooks data models outputs src

# Configurar Python path
ENV PYTHONPATH="${PYTHONPATH}:/app"

# Exponer puerto de Jupyter
EXPOSE 8888