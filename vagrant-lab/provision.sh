#!/usr/bin/env bash
set -e

# Update package index
sudo apt-get update -y

# Install some basic tools
sudo apt-get install -y vim git curl

# Create a demo user if it doesn't exist
if ! id demouser >/dev/null 2>&1; then
  sudo useradd -m -s /bin/bash demouser
  echo "demouser:password" | sudo chpasswd
fi

# Make sure SSH is enabled (on most Ubuntu boxes it already is)
if systemctl list-unit-files | grep -q ssh.service; then
  sudo systemctl enable ssh
  sudo systemctl restart ssh
fi

# Drop a marker file so you can prove provisioning ran
echo "Provisioned via Vagrant on $(date)" | sudo tee /home/vagrant/PROVISIONED.txt
sudo chown vagrant:vagrant /home/vagrant/PROVISIONED.txt
