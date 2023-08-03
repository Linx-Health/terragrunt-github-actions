FROM alpine:3.18.2

RUN apk add unzip=6.0-r14 bash=5.2.15-r5 git=2.40.1-r0 jq=1.6-r3 openssh=9.3_p2-r0 --no-cache && \
    mkdir -p /src

WORKDIR /src
COPY src .

ENTRYPOINT ["bash", "main.sh"]
