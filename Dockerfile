FROM debian:11.2-slim

WORKDIR /app

ADD bin/gaiad-v7.0.3-linux-amd64 /app

RUN mv gaiad-v7.0.3-linux-amd64 gaiad

RUN mv gaiad /usr/local/bin

WORKDIR /workdir

ADD app-home .gaia

ENTRYPOINT [ "gaiad" ]