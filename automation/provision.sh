#!/bin/bash
ansible-playbook cconp-lab.yaml
ansible server01 -a "sudo ip link set up eth1"
ansible server01 -a "sudo ip addr add 192.168.100.1/24 dev eth1"
ansible server02 -a "sudo ip link set up eth2"
ansible server02 -a "sudo ip addr add 192.168.100.2/24 dev eth2"


