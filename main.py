import os
from flask import Flask

# Crea la aplicación Flask
app = Flask(__name__)

# Define la ruta principal (endpoint de la aplicación)
@app.route('/')
def hello_world():
    # Mensaje de confirmación de despliegue y tarea 1 completada
    return '¡Hola, Cloud Run y CI/CD de Google Cloud! conectado con gitHub atraves de un trigger in google cloud.'

# Inicia la aplicación. 
# Cloud Run inyecta la variable de entorno $PORT, que Gunicorn usará.
if __name__ == "__main__":
    app.run(
        debug=True, 
        host='0.0.0.0', 
        port=int(os.environ.get('PORT', 8080))
    )
