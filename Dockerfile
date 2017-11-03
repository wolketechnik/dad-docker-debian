FROM debian:jessie

ENV REFRESHED_AT 2017-11-03

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends apt-utils ca-certificates curl debconf-utils nano wget && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/debian

ENV HOME /opt/debian

WORKDIR /opt/debian

VOLUME ["/etc", "/var/log"]
