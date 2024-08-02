# Use a base image with the specified platform
FROM cbluebird/devbox-system:latest

# Install Python and other necessary tools in a single layer
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Entry point (modifiable as needed)
CMD ["/bin/bash"]
