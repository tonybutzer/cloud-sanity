#! /bin/bash

# sudo apt-get upadte

echo "Hello Tony from cubeBox.sh userdata terraform" > /tmp/hellotony.txt

sudo hostname cube5
sudo echo '127.0.0.1 cubeBox' >> /etc/hosts
sudo mkdir -p /opt
sudo chown -R ubuntu /opt

(cd /opt; git clone http://github.com/tonybutzer/index)

sudo mkdir -p /opt/data; sudo chown ubuntu /opt/data

(cd /opt/index/pkg; ./pkgCubeBox.sh)
