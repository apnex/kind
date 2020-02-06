#!/bin/bash
# install
mkdir -p ${HOME}/bin
curl -Lo ./kind "https://github.com/kubernetes-sigs/kind/releases/download/v0.7.0/kind-$(uname)-amd64"
chmod +x ./kind
mv ./kind ${HOME}/bin/

# autocomplete
kind completion bash >/etc/bash_completion.d/kind
exec bash
