FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl sudo nodejs npm git
RUN useradd -m -s /bin/bash user
RUN echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/user
WORKDIR /workspace
