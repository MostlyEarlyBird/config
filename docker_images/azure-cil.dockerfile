FROM debian:bookworm-slim

RUN apt update && apt install -y curl python3 gpg

RUN curl -sLS https://packages.microsoft.com/keys/microsoft.asc | \
    gpg --dearmor | tee /etc/apt/keyrings/microsoft.gpg > /dev/null \
    && chmod go+r /etc/apt/keyrings/microsoft.gpg

RUN AZ_DIST=$(lsb_release -cs) \
    tee /etc/apt/sources.list.d/azure-cli.sources <<EOF
    Types: deb
    URIs: https://packages.microsoft.com/repos/azure-cli/
    Suites: ${AZ_DIST}
    Components: main
    Architectures: $(dpkg --print-architecture)
    Signed-by: /etc/apt/keyrings/microsoft.gpg
EOF

RUN apt-get update && apt-get install -y azure-cli && \
    curl -fsSL https://get.docker.com | sh

ENTRYPOINT [ "az" ]

