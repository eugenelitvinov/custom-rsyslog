FROM alpine:latest

EXPOSE 514/udp
EXPOSE 514/tcp

VOLUME [ "/var/log", "/etc/rsyslog.d" ]

RUN apk add --no-cache tzdata rsyslog 

ADD rsyslog.conf /etc/rsyslog.conf

ENTRYPOINT ["/usr/sbin/rsyslogd", "-n"]

