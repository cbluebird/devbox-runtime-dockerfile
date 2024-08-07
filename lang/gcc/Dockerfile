# Use a base image with the specified platform
FROM cbluebird/devbox-ssh:latest

# Install GCC and other necessary tools in a single layer
RUN apt-get update && \
    apt-get install -y gcc g++ make && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
