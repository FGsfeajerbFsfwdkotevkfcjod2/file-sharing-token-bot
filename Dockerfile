FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# If your bot listens on a different port, change 8080 accordingly
EXPOSE 8080

CMD ["python", "main.py"]
