FROM alpine:3

RUN apk add unzip git jq openssh

RUN mkdir -p /src

COPY src /src/

ENTRYPOINT ["/src/main.sh"]
