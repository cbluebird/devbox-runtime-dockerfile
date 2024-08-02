# Use a base image with the specified platform
FROM cbluebird/devbox-system:latest

# Install Rust and other necessary tools in a single layer
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Set Rust environment variables
ENV PATH=/root/.cargo/bin:$PATH

# Entry point (modifiable as needed)
CMD ["/bin/bash"]
