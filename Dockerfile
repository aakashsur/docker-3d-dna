FROM debian:latest

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        default-jre \
        gawk \
        parallel \
        perl \
        python3 \
        python3-pip \
        git && \
    apt-get autoremove && \
    apt-get clean

RUN python3 -m pip install --upgrade \
        pip && \
    python3 -m pip install --upgrade\
        setuptools \
        wheel && \
    python3 -m pip install \
        scipy \
        numpy \
        matplotlib && \
    python3 -m pip cache purge

RUN cd && \
    git clone https://github.com/aidenlab/3d-dna.git && \
    chmod +x /root/3d-dna/run-asm-pipeline.sh && \
    ln -s /root/3d-dna/run-asm-pipeline.sh /root/3d-dna/3d-dna

ENV LC_ALL=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    PATH="${PATH}:/root/3d-dna"

    
 
