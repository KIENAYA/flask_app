FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
DOCKER_CERT_PATH=/certs/client/ca.pem
DOCKER_TLS_VERIFY=1
