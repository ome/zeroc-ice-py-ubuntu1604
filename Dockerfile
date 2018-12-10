FROM ubuntu:16.04
MAINTAINER ome-devel@lists.openmicroscopy.org.uk

RUN apt-get update && \
    apt-get install -y -q\
        build-essential \
        db5.3-util \
        libssl-dev \
        libbz2-dev \
        libmcpp-dev \
        libdb++-dev \
        libdb-dev \
        lsb-release \
        python-dev \
        python-pip \
        software-properties-common

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 5E6DA83306132997
RUN apt-add-repository "deb http://zeroc.com/download/apt/ubuntu`lsb_release -rs` stable main"

RUN apt-get update && \
    apt-get install -y -q \
    zeroc-ice-all-runtime \
    zeroc-ice-all-dev

RUN pip install wheel
RUN mkdir /dist
ADD build.sh /
CMD ["/build.sh"]
