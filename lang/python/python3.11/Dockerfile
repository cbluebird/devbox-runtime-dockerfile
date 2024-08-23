# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/ssh:9ea8cf

# Install Python and other necessary tools in a single layer
RUN apt-get update && \
    apt-get install -y python3.11 python3-pip python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /root/.sealos