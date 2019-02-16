#!/usr/bin/env bash
hostname apache
mkdir /etc/salt
echo 'apache' > /etc/salt/minion_id

# First copy bashrc file that enables color text, I hate BW :(
cp /vagrant/provision-scripts/deploy-file/bashrc /home/vagrant/.bashrc
cp /vagrant/provision-scripts/deploy-file/bashrc /root/.bashrc

#echo deb http://ppa.launchpad.net/saltstack/salt/ubuntu `lsb_release -sc` main | sudo tee /etc/apt/sources.list.d/saltstack.list
#wget -q -O- "http://keyserver.ubuntu.com:11371/pks/lookup?op=get&search=0x4759FA960E27C0A6" | sudo apt-key add -
apt-get update
apt-get install -y salt-minion

cat "/vagrant/provision-scripts/deploy-file/hosts" >> /etc/hosts
reboot
