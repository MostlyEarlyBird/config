FROM alpine:3.20.2

RUN apk add github-cli

ENTRYPOINT [ "/usr/bin/gh" ]
