# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/ssh:9ea8cf

# Install Node.js 20, npm, and TypeScript in a single layer
RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g typescript yarn pnpm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /root/.sealos