FROM alpine:latest
RUN apk add --no-cache coturn
COPY turnserver.conf /etc/turnserver.conf
EXPOSE 10000
CMD ["/usr/bin/turnserver", "-c", "/etc/turnserver.conf"]