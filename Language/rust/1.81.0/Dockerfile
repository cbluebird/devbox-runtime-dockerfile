FROM ghcr.io/labring-actions/devbox/debian-ssh-12.6:a9c28d

RUN cd /home/sealos/project && \
rm -rf ./*

COPY /Language/rust/project /home/sealos/project

USER sealos
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y 

USER root
 
RUN apt-get update && \
    apt-get install -y build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    echo 'export PATH=/home/sealos/.cargo/bin:$PATH' >> $HOME/.bashrc && \
    echo '. /home/sealos/.cargo/env' >> $HOME/.bashrc && \ 
    chown -R sealos:sealos /home/sealos/project && \
    chmod -R u+rw /home/sealos/project && \
    chmod -R +x /home/sealos/project/entrypoint.sh

USER sealos
ENV PATH="/home/sealos/.cargo/bin:${PATH}"
RUN cd /home/sealos/project && \
    cargo build --release

USER root
RUN mkdir /home/.sealos