# Usa una imagen base ligera
FROM python:3.10-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de requisitos e instala dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de la aplicación
COPY . .

# Expone el puerto que usará Cloud Run
EXPOSE 8080

# Comando para ejecutar la aplicación con Gunicorn
# Cloud Run inyectará la variable de entorno $PORT
CMD ["gunicorn", "main:app", "--bind", "0.0.0.0:8080"]