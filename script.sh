#!/bin/bash
sudo apt-get update
sudo apt-get install -y apeache2
sudo systemctl start apeache2
sudo systemctl enable apeache2