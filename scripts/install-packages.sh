#!/bin/bash

echo "Installing packages..."

apt-get update
apt-get install -y postgresql \
    nginx

echo "Packages installed."
