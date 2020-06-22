FROM alpine:edge

LABEL MAINTAINER="Daniele Salvatore Albano <d.albano@google.com>"
LABEL "com.github.actions.description"="lcov action to run lcov"
LABEL "com.github.actions.name"="lcov-action"
LABEL "com.github.actions.color"="blue"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk update && apk add lcov bash

COPY entrypoint.sh /

RUN chmod 700 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
