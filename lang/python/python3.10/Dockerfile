# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/devbox-ssh:latest

# Install Python and other necessary tools in a single layer
RUN apt-get update && \
    apt-get install -y python3.10 python3-pip python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
RUN mkdir /root/.sealos