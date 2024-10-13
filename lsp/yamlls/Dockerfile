FROM node:22.0.0-alpine3.19

WORKDIR /lsp


RUN yarn add yaml-language-server

USER node
ENTRYPOINT ["/lsp/node_modules/.bin/yaml-language-server"]
