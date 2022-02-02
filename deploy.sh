#! /bin/bash

sudo systemctl stop eschool.service
rm -r /home/azureuser/eschool/eschool.jar
wget -P /home/azureuser/eschool/ https://eschoolstorage.blob.core.windows.net/eschool/eschool.jar
sudo systemctl start eschool.service
