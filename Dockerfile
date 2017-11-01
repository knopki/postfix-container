FROM alpine:3.6

LABEL name="postfix-relay"
LABEL version="3.2.4"
LABEL release="2"
LABEL architecture="x86_64"
LABEL vendor="Sergey Korolev"

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.21.1.1/s6-overlay-amd64.tar.gz /tmp/

RUN \
# s6 overlay
  gunzip -c /tmp/s6-overlay-amd64.tar.gz | tar -xf - -C / \
# packages
  && apk add --no-cache postfix \
# postfix
  && postconf -e "smtputf8_enable = no"

# root filesystem
ADD rootfs /

VOLUME [ "/var/spool/postfix", "/etc/postfix" ]
EXPOSE 25
ENTRYPOINT [ "/init" ]
