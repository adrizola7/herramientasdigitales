#!/bin/bash
# Install Hugo if not present
if ! command -v hugo &> /dev/null; then
    HUGO_VERSION="0.165.0"
    curl -sL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" | tar -xz -C /usr/local/bin hugo
fi
hugo --minify
