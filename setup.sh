#!/bin/bash

# Update Ubuntu Script

# Check for root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or use sudo."
  exit 1
fi

echo "Updating package lists..."
sudo apt update

echo "Upgrading packages..."
sudo apt upgrade -y

echo "Performing distribution upgrade..."
sudo apt dist-upgrade -y

echo "Removing unnecessary packages..."
sudo apt autoremove -y

echo "Cleaning up package cache..."
sudo apt autoclean -y

echo "Update complete!"
