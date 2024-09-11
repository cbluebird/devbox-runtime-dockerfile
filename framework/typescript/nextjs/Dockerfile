FROM ghcr.io/labring-actions/devbox/nodejs-20:d8bfae

COPY /framework/typescript/nextjs/project /home/sealos/project

RUN chown -R sealos:sealos /home/sealos/project && \
chmod -R u+rw /home/sealos/project && \
cd /home/sealos/project && \
npm config set fetch-retry-maxtimeout 1000000 && \
npm install && \
npm install -D @swc/cli @swc/core

RUN mkdir /home/sealos/.sealos