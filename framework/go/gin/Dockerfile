# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/devbox-go1.22.5:latest

COPY /framework/go/gin/project /home/sealos/project

RUN chown -R sealos:sealos /home/sealos/project && \
chmod -R u+rw /home/sealos/project

RUN mkdir /home/sealos/.sealos