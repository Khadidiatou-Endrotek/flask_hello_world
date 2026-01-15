FROM python:3.9-slim
WORKDIR /app
# Copie les fichiers nécessaires
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Flask écoute sur le port 5000 par défaut
EXPOSE 5000
CMD ["python", "app.py"]
