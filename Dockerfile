FROM ubuntu

WORKDIR /app

RUN apt-get update && \
    apt-get install -y nodejs npm

RUN apt-get update && \
    apt-get install -y mysql-server


CMD ["tail", "-f", "/dev/null"]
