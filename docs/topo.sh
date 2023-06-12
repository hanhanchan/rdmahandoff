#!/bin/bash

sudo ip link add veth01 type veth peer name veth11
sudo ip link add veth21 type veth peer name veth31
sudo ip link add veth41 type veth peer name veth51



sudo ip addr add 192.168.1.1/24 dev veth01
sudo ip addr add 192.168.1.2/24 dev veth11
sudo ip addr add 192.168.2.1/24 dev veth21
sudo ip addr add 192.168.2.2/24 dev veth31
sudo ip addr add 192.168.3.1/24 dev veth41
sudo ip addr add 192.168.3.2/24 dev veth51



sudo ip link set veth01 up
sudo ip link set veth11 up
sudo ip link set veth21 up
sudo ip link set veth31 up
sudo ip link set veth41 up
sudo ip link set veth51 up


sudo ip route add 192.168.2.0/24 via 192.168.1.2 dev veth01
sudo ip route add 192.168.3.0/24 via 192.168.1.2 dev veth01
sudo ip route add 192.168.1.0/24 via 192.168.2.2 dev veth21
sudo ip route add 192.168.3.0/24 via 192.168.2.2 dev veth21
sudo ip route add 192.168.1.0/24 via 192.168.3.2 dev veth41
sudo ip route add 192.168.2.0/24 via 192.168.3.2 dev veth41
