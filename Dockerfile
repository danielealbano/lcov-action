FROM ubuntu:latest

LABEL MAINTAINER="Daniele Salvatore Albano <d.albano@google.com>"
LABEL "com.github.actions.description"="Action to run lcov"
LABEL "com.github.actions.name"="lcov-action"
LABEL "com.github.actions.color"="blue"

RUN apt-get update && apt-get install -y cpp gcc cpp-9 gcc-9 cpp-10 gcc-10 cpp-11 gcc-11 cpp-12 gcc-12 lcov

COPY entrypoint.sh /

RUN chmod 700 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
