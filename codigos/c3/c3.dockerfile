# Usa la imagen base de Ubuntu 14.10
FROM ubuntu:18.10

COPY sources.list /etc/apt/sources.list

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y net-tools
# Actualiza el sistema e instala el cliente y servidor OpenSSH

RUN apt-get update && apt-get install -y \
    openssh-client 
    