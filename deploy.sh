#! /bin/bash

sudo apt update
sudo apt install -y openjdk-8-jdk
mkdir /home/azureuser/eschool
sudo chown -R azureuser:azureuser /home/azureuser/eschool
wget -P /home/azureuser/eschool https://eschoolstorage.blob.core.windows.net/eschool/eschool.jar
sudo wget -P /etc/systemd/system https://eschoolstorage.blob.core.windows.net/eschool/eschool.service
sudo systemctl daemon-reload
sudo systemctl enable eschool.service
