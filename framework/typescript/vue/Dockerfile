# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/nodejs22:09ca53

# 拷贝整个文件夹到镜像中的指定位置
COPY /framework/typescript/vue/project /home/sealos/project

RUN chown -R sealos:sealos /home/sealos/project && \
chmod -R u+rw /home/sealos/project && \
cd /home/sealos/project && \
npm install

RUN mkdir /home/sealos/.sealos