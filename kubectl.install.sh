#!/bin/bash
mkdir -p ${HOME}/bin
RELEASE=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
curl -Lo ./kubectl https://storage.googleapis.com/kubernetes-release/release/${RELEASE}/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl ${HOME}/bin/
