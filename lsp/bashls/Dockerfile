FROM node:22.0.0-alpine3.19

WORKDIR /lsp


RUN npm i bash-language-server
RUN apk add shfmt

USER node
ENTRYPOINT ["/lsp/node_modules/.bin/bash-language-server"]
