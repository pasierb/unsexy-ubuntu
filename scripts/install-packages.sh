#!/bin/bash

echo "Installing packages..."

apt-get update
apt-get install -y postgresql \
    git \
    nginx

echo "Packages installed."
