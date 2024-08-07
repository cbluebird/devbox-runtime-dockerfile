# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/devbox-python:latest

# 拷贝整个文件夹到镜像中的指定位置
COPY /framework/python/flask/project /home/sealos/project

RUN cd /home/sealos/project&&python3.12 -m venv env && \
    chown -R sealos:sealos /home/sealos/project && \
    chmod -R u+rw /home/sealos/project