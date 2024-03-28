#!/bin/bash

# List installed packages containing "apache"
dpkg -l | grep apache

# List systemd unit files containing "apache"
systemctl list-unit-files | grep apache

# Update package lists
sudo apt-get update

# Install Apache HTTP Server
sudo apt-get install -y apache2

# Start Apache service
sudo systemctl start apache2

# Enable Apache to start on boot
sudo systemctl enable apache2
