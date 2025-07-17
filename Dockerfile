FROM python:3.9.7-slim-buster

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git curl python3-pip ffmpeg gnupg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get update && apt-get install -y nodejs && \
    npm install -g npm

COPY . /app/
WORKDIR /app/

RUN pip3 install -r requirements.txt

CMD ["bash", "start.sh"]
