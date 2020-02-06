#!/bin/bash

## remove kubeconfig
sed -i '/KUBECONFIG/d' ${HOME}/.bash_profile
unset KUBECONFIG
rm -f ${HOME}/kubeconfig || true

## delete cluster
kind delete cluster
