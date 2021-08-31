FROM debian:stable-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y --no-install-recommends ca-certificates stubby && \
    mkdir /data

EXPOSE 53/tcp 53/udp

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
