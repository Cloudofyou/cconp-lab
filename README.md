## CCONP Lab v4

### Summary:

Test environment for CCONP scenarios

### Network Diagram:

![Network Diagram](https://github.com/Cloudofyou/cconp-lab/blob/v4/documentation/cconp-lab-v4.png)

### Initializing the demo environment:

```
$ git clone -b v4 https://github.com/Cloudofyou/cconp-lab ./cconp-lab-v4
$ cd cconp-lab-v4
$ ./bringitup
$ vagrant ssh oob-mgmt-server
$ git clone -b v4 https://github.com/Cloudofyou/cconp-lab
$ cd cconp-lab/automation
$ ./provision.sh
```

### To Test:

```
oob-mgmt-server$ ssh server01
server01$ ping 172.16.1.1
server01$ traceroute -n 172.16.1.1
server01$ ping 192.168.100.11
server01$ ping 192.168.101.10
```
