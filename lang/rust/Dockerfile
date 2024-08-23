# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/ssh:9ea8cf

# Install Rust and other necessary tools in a single layer
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
    apt-get install -y  build-essential  && \
    apt-get clean && \
    echo 'export PATH=/root/.cargo/bin:$PATH' >> /home/sealos/.bashrc && \
    rm -rf /var/lib/apt/lists/*

# Set Rust environment variables
ENV PATH=/root/.cargo/bin:$PATH