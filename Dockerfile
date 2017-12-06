FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install -y curl unixodbc-dev

#downloading the relevant linux driver for this docker environment
RUN curl -sS http://rpm.k50.ru/vertica-client-8.0.1-0-w-ini.x86_64.tar.gz | tar xvz -C /
RUN ls -la

ENTRYPOINT ["/opt/vertica/bin/vsql"]