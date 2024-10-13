FROM debian:12.6-slim

RUN apt update && apt install -y --no-install-recommends libreoffice-impress-nogui

WORKDIR  /files

CMD [ "bash" ]
