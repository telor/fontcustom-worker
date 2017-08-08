FROM ubuntu:16.04

ENV FONTCUSOM_VERSION 1.3.8

COPY woff-code-latest.zip /app/woff-code-latest.zip

RUN apt-get update && \
    apt-get -y install ruby ruby-dev fontforge wget build-essential zlib1g-dev unzip eot-utils python && \
    unzip /app/woff-code-latest.zip -d /app/sfnt2woff && \
    cd /app/sfnt2woff && make && mv sfnt2woff /usr/local/bin/ && \
    gem install --no-document fontcustom -v "${FONTCUSOM_VERSION}"

VOLUME /app/project

WORKDIR /app/project

CMD ["fontcustom", "help"]
