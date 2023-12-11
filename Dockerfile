FROM alpine:3.18.2

RUN apk add aws-cli=2.13.5-r0 unzip bash git jq openssh curl --no-cache && \
    mkdir -p /src

COPY src /src

ENTRYPOINT ["/src/main.sh"]
