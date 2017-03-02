FROM alpine:3.5
MAINTAINER Micheal Waltz <mwaltz@demandbase.com>

#Install awscli since it's not in alpine yet
RUN set -x \
    && apk add --no-cache -v bash python py-pip less groff \
    && pip install awscli

COPY watch /watch

VOLUME /data

ENTRYPOINT [ "./watch" ]
CMD ["/data"]
