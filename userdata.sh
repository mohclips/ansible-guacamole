#!/bin/bash
#
# This is an example OpenStack userdata shell script
#
apt update
apt -y dist-upgrade
apt-get -y install git python-pip python-dev python-crypto libffi-dev libssl-dev
echo "### pip install"
pip2 install --upgrade ansible markupsafe 2>&1
echo "### git clone"
git clone https://github.com/mohclips/ansible-guacamole.git /tmp/app
export ANSIBLE_LOG_PATH=/tmp/app/ansible.out
pushd /tmp/app
  echo "### ansible play"
  ansible-playbook --connection=local -i "localhost," ./install-guacamole.yml
popd
exit 0

