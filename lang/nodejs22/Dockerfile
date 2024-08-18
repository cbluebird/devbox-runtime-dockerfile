# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/devbox-ssh:latest

# Install Node.js 20, npm, and TypeScript in a single layer
RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g typescript yarn pnpm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*