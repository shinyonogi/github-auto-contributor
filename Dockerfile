FROM python:3.9-slim

RUN apt-get update && apt-get install -y git

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

CMD ["python", "main.py"]
