FROM ubuntu:xenial

RUN apt-get update; \
    apt-get install -y curl unixodbc-dev --no-install-recommends; \
    curl -sS http://rpm.k50.ru/vertica-client-8.0.1-0-w-ini.x86_64.tar.gz | tar xvz -C /

ENTRYPOINT ["/opt/vertica/bin/vsql"]