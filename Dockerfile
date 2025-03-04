FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose the port that Streamlit runs on
EXPOSE 8501

# Run medibot.py when the container launches
CMD ["streamlit", "run", "medibot.py", "--server.port=8501", "--server.address=0.0.0.0"]