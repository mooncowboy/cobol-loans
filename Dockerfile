FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y gnucobol make && \
    apt-get clean

WORKDIR /workspace
