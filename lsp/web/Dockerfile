FROM node:22.0.0-alpine3.19
WORKDIR /lsp
RUN npm i  vscode-langservers-extracted

USER node
WORKDIR /lsp/node_modules/.bin/
ENTRYPOINT ["/bin/sh"]
