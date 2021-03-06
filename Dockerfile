FROM python:2.7.17-slim
COPY app.py /app/
WORKDIR /app
COPY requirements.txt requirements.txt
RUN apt-get update && apt install -y gcc libsndfile1 \ 
 && rm -rf /var/lib/apt/lists/* \
 && pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python2","app.py"]
