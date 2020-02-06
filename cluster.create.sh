#!/bin/bash

## create cluster
kind create cluster --config=kind.config.yaml

## create kubeconfig
kind get kubeconfig >${HOME}/kubeconfig

## set kubeconfig
MYVALUE=$(grep "KUBECONFIG" ${HOME}/.bash_profile)
if [[ -n ${MYVALUE} ]]; then
	printf "Value exist: ${MYVALUE}\n"
else
	printf "Value not exist: ${MYVALUE}\n"
	export KUBECONFIG=${HOME}/kubeconfig
	echo "export KUBECONFIG=${HOME}/kubeconfig" >>${HOME}/.bash_profile
fi
