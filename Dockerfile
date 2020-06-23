FROM ubuntu:latest

LABEL MAINTAINER="Daniele Salvatore Albano <d.albano@google.com>"
LABEL "com.github.actions.description"="Action to run lcov"
LABEL "com.github.actions.name"="lcov-action"
LABEL "com.github.actions.color"="blue"

RUN apt-get update && apt-get install -y cpp gcc cpp-7 gcc-7 cpp-8 gcc-8 cpp-9 gcc-9 lcov

COPY entrypoint.sh /

RUN chmod 700 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
