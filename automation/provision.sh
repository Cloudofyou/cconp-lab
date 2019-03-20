#!/bin/bash
ansible-playbook cconp-lab.yaml
ansible server01 -a "sudo apt-get update -y"
ansible server01 -a "sudo apt install traceroute -y"
ansible server01 -a "sudo ip link set up eth1"
ansible server01 -a "sudo ip addr add 192.168.100.10/24 dev eth1"
ansible server01 -a "sudo ip route del default"
ansible server01 -a "sudo ip route add default via 192.168.100.1"
ansible server02 -a "sudo apt-get update -y"
ansible server02 -a "sudo apt install traceroute -y"
ansible server02 -a "sudo ip link set up eth1"
ansible server02 -a "sudo ip addr add 192.168.101.10/24 dev eth1"
ansible server02 -a "sudo ip route del default"
ansible server02 -a "sudo ip route add default via 192.168.101.1"
ansible server03 -a "sudo apt-get update -y"
ansible server03 -a "sudo apt install traceroute -y"
ansible server03 -a "sudo ip link set up eth1"
ansible server03 -a "sudo ip addr add 192.168.100.11/24 dev eth1"
ansible server03 -a "sudo ip route del default"
ansible server03 -a "sudo ip route add default via 192.168.100.1"
ansible server04 -a "sudo apt-get update -y"
ansible server04 -a "sudo apt install traceroute -y"
ansible server04 -a "sudo ip link set up eth1"
ansible server04 -a "sudo ip addr add 192.168.101.11/24 dev eth1"
ansible server04 -a "sudo ip route del default"
ansible server04 -a "sudo ip route add default via 192.168.101.1"
