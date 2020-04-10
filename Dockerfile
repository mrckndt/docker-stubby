FROM bitnami/minideb:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV LOG_LEVEL 0

RUN apt update && \
    apt install -y --no-install-recommends ca-certificates stubby && \
    mkdir /data

EXPOSE 53/tcp 53/udp

CMD ["/bin/sh", "-c", "/usr/bin/stubby -v $LOG_LEVEL -C /data/stubby.yml"]
