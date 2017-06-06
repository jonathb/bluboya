#!/bin/bash
cat /etc/*rele* 2>/dev/null | head -3
uname -a | cut -b 1-56
echo "--"
echo "PYTHON `which python` `python --version`"
echo "GIT    `which git` `git --version`"
echo "VBOX   `which VBoxManage` `VBoxManage --version`"
echo "VAGRANT `which vagrant`  `vagrant --version`"
echo "ANSIBLE `which ansible` `ansible --version`"
echo "--"
df .
