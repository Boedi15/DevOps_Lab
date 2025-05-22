#!/bin/bash
apt-get update
apt-get install -y curl git vim wget python3-pip software-properties-common docker.io
usermod -aG docker vagrant

# Install Ansible
pip3 install ansible

# (Opsional) Install Jenkins via playbook/manual

