FROM alpine:edge
RUN apk upgrade --no-cache \
 && apk add --no-cache dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
STOPSIGNAL SIGKILL
ENTRYPOINT ["dnsmasq", "-kC/etc/dnsmasq.conf"]
