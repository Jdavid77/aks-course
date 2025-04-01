#!/bin/bash

sudo apt -qq update

# install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Install Kubectl CLI
snap install kubectl --classic

