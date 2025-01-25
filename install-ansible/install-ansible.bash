#!/bin/bash

# Bash script to install Ansible on Linux

# Update package list
echo "Updating package list..."
sudo apt update -y

# Install software-properties-common
echo "Installing software-properties-common..."
sudo apt install -y software-properties-common

# Add Ansible PPA
echo "Adding Ansible PPA..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Install Ansible
echo "Installing Ansible..."
sudo apt install -y ansible

# Verify installation
echo "Ansible installation completed. Verifying version..."
ansible --version

echo "Ansible is now installed and ready to use!"
