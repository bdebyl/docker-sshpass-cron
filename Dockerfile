FROM alpine:3.18.2
LABEL org.opencontainers.image.authors="bastian@bdebyl.net"
ENTRYPOINT ["/bin/crond-crontab.sh"]

COPY crond-crontab.sh /bin/crond-crontab.sh

RUN apk --update add \
    openssh \
    sshpass 

VOLUME ["/mnt"]
