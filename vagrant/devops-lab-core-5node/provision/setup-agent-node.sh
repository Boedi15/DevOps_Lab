#!/bin/bash
apt-get update
apt-get install -y curl vim docker.io
usermod -aG docker vagrant

