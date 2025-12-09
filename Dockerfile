# Python image
FROM python:3.9-slim

# Working directory
WORKDIR /app

# Dependencies install karna
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Pura code copy karna
COPY . .

# Google Cloud Run 8080 port use karta hai
ENV PORT 8080

# --- IMPORTANT ---
# Hum Gunicorn use karenge production server ke liye
# 'app:app' ka matlab hai: app.py file ke andar 'app' variable dhoondo
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app