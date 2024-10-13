FROM node:22.0.0-alpine3.19

WORKDIR /lsp


RUN npm install @microsoft/compose-language-service

USER node
ENTRYPOINT ["/lsp/node_modules/@microsoft/compose-language-service/bin/docker-compose-langserver"]
