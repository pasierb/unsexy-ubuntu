#!/bin/bash

echo "Creating deployer user..."

# Create the 'deployer' user with no password (-M creates no home directory)
useradd -m -s /bin/bash deployer

# Create .ssh directory for SSH keys
mkdir -p /home/deployer/.ssh
chmod 700 /home/deployer/.ssh

# Change ownership of the .ssh directory to the deployer user
chown -R deployer:deployer /home/deployer/.ssh

usermod -a -G www-data deployer
chown -R www-data:www-data /var/www
chmod -R 775 /var/www

echo "deployer user created."

# Optionally, add public SSH key to deployer's authorized_keys
# echo "ssh-rsa YOUR_PUBLIC_SSH_KEY_HERE" > /home/deployer/.ssh/authorized_keys
# chmod 600 /home/deployer/.ssh/authorized_keys
# chown deployer:deployer /home/deployer/.ssh/authorized_keys
