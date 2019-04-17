#! /bin/bash

clear >$(tty)
echo -en '\n'
echo -en '\n' 

echo "Adding User to docker group"
echo -en '\n'
echo -en '\n'
ssh -i /home/home/Documents/Ansible_Lab/ansible ec2-user@18.202.79.72 "sudo usermod -aG docker ec2-user "

echo " done"

