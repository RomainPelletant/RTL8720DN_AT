# Base image which contains global dependencies
FROM ubuntu:20.04 as base
WORKDIR /workdir

# System dependencies
# According to AN0400 Ameba-D Application Note_v3_watermark.pdf page 15
# in doc folder
ARG arch=amd64
ENV DEBIAN_FRONTEND=noninteractiv
RUN mkdir /workdir/ncs && \
	mkdir /installdir/ && \
	cd /installdir/ && \
    apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        build-essential \
        libc6-i386 \
        lib32ncurses5-dev \
        make \
        bc \
        gawk \
        ncurses-dev \
        wget \
        git &&\
    apt-get -y clean && apt-get -y autoremove

# Build image, contains project-specific dependencies
FROM base
COPY . /workdir
CMD ["bash"]
