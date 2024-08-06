# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/devbox-system:latest

# Install Python and other necessary tools in a single layer
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv && \
    python3 -m venv /opt/venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the virtual environment as the default Python environment
ENV PATH="/opt/venv/bin:$PATH"

# Entry point (modifiable as needed)
CMD ["/bin/bash"]
