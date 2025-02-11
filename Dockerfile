FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

# Variabile d'ambiente per il nome dell'agente (valore di default)
ENV AGENT_NAME=Flask

EXPOSE 5000

CMD ["python", "app.py"]
