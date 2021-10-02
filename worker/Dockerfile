FROM docker.io/buildbot/buildbot-worker:master

USER root

RUN apt-get update && \
    apt-get -y install \
    apt-utils \
    wget \
    cpio \
    unzip \
    rsync \
    bc && \
    apt-get clean

USER buildbot
