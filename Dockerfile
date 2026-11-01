FROM python:3.11-slim

WORKDIR /app

# Installer dépendances système de base
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT=8086
ENV PYTHONUNBUFFERED=1
EXPOSE 8086

CMD ["python", "-u", "server.py"]
