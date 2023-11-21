#!/bin/bash

echo "Installing packages..."

apt-get update
apt-get install -y postgresql \
    git \
    build-essential \
    make \
    nginx

echo "Packages installed."
