# Usa la imagen oficial de Python 3.13
FROM python:3.13-slim

#Descarga una imagen liviana de Linux con Python 3.13 instalado.

# Crea (si no existiera) y se mueve al directorio /app dentro del contenedor.
#Cualquier comando siguiente se ejecuta dentro de ese directorio.
WORKDIR /app

# Copia todo tu proyecto actual (el mismo directorio donde está el Dockerfile) al contenedor dentro de /app.
COPY . /app

# Instala dependencias si tenés requirements.txt
# (si no existe, docker lo ignora automáticamente)
RUN pip install --no-cache-dir -r requirements.txt || true

# Comando por defecto para ejecutar tu script
CMD ["python", "app.py"]
