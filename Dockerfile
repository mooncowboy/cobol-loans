FROM ubuntu:latest

# 1. Install software-properties-common so you can use add-apt-repository
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get clean

# 2. Add the dotnet backports PPA
RUN add-apt-repository ppa:dotnet/backports

# 3. Now install everything else in one go
RUN apt-get update && \
    apt-get install -y gnucobol make dotnet-sdk-9.0 zlib1g && \
    apt-get clean

WORKDIR /workspace
