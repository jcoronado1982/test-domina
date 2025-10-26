import os
from flask import Flask

# Crea la aplicación Flask
app = Flask(__name__)

# Define la ruta principal
@app.route('/')
def hello_world():
    # Mensaje de confirmación de despliegue
    return '¡Hola, Cloud Run y CI/CD de Google Cloud! Completada. 🚀'

# Inicia la aplicación en el puerto requerido por Cloud Run
# Cloud Run inyecta la variable de entorno $PORT. Si no está, usamos 8080.
if __name__ == "__main__":
    app.run(
        debug=True, 
        host='0.0.0.0', 
        port=int(os.environ.get('PORT', 8080))
    )