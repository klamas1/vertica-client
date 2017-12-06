FROM ubuntu:xenial

ENV LANG="en_US.UTF-8" \
    LANGUAGE="en_US:en" \
    LC_ALL="en_US.UTF-8"

RUN apt-get update; \
    apt-get install -y locales curl unixodbc-dev --no-install-recommends; \
    locale-gen en_US.UTF-8; \
    localedef -i en_US -f UTF-8 en_US.UTF-8; \
    curl -sS http://rpm.k50.ru/vertica-client-8.0.1-0-w-ini.x86_64.tar.gz | tar xvz -C /

ENTRYPOINT ["/opt/vertica/bin/vsql"]