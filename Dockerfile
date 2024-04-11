FROM ubuntu

WORKDIR /app

RUN apt-get update && \
    apt-get install -y nodejs npm

CMD ["tail", "-f", "/dev/null"]
