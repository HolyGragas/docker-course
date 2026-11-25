FROM python:3.12-slim

WORKDIR /app

# Dependencies first: this layer stays cached while only the code changes
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
