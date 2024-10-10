FROM library/alpine:latest

MAINTAINER hzbb2221
EXPOSE 9121/tcp
ENV REDIS_HOST=${REDIS_HOST} REDIS_PROT=${REDIS_PROT} REDIS_PASSWORD=${REDIS_PASSWORD}

ADD redis_exporter-v1.48.0.linux-amd64.tar.gz /usr/local
RUN mv /usr/local/redis_exporter-v1.48.0.linux-amd64 /usr/local/redis_exporter
COPY conf ./


ENTRYPOINT [ "/bin/sh", "docker-entrypoint.sh" ]
CMD ["/bin/sh", "start.sh" , "&&", "tail", "-f", "/dev/null"]
