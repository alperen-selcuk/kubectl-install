#!/bin/bash

#ubuntu üzerine kubectl kurulumu

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

sudo apt-get update

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

sudo curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

sudo chmod 700 get_helm.sh

./get_helm.sh
