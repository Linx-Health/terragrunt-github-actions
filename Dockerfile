FROM alpine:3.18.2

RUN apk add unzip=6.0-r14 bash=5.2.15-r5 git=2.40.1-r0 jq=1.6-r3 openssh=9.3_p2-r0 curl=8.2.1-r0 --no-cache && \
    mkdir -p /src

COPY src /src

ENTRYPOINT ["bash", "/src/main.sh"]
