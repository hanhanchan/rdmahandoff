#!/bin/bash

# sudo ip link add veth01 type veth peer name veth11
# sudo ip link add veth21 type veth peer name veth31
# sudo ip link add veth41 type veth peer name veth51



# sudo ip addr add 192.168.1.1/24 dev veth01
# sudo ip addr add 192.168.1.2/24 dev veth11
# sudo ip addr add 192.168.2.1/24 dev veth21
# sudo ip addr add 192.168.2.2/24 dev veth31
# sudo ip addr add 192.168.3.1/24 dev veth41
# sudo ip addr add 192.168.3.2/24 dev veth51



# sudo ip link set veth01 up
# sudo ip link set veth11 up
# sudo ip link set veth21 up
# sudo ip link set veth31 up
# sudo ip link set veth41 up
# sudo ip link set veth51 up


# sudo ip route add 192.168.2.0/24 via 192.168.1.2 dev veth11
# sudo ip route add 192.168.3.0/24 via 192.168.1.2 dev veth11
# sudo ip route add 192.168.1.0/24 via 192.168.2.2 dev veth31
# sudo ip route add 192.168.3.0/24 via 192.168.2.2 dev veth31
# sudo ip route add 192.168.1.0/24 via 192.168.3.2 dev veth51
# sudo ip route add 192.168.2.0/24 via 192.168.3.2 dev veth51


# First pair: veth0-veth1
sudo ip link add name veth0 type veth peer name veth1
sudo ip link set dev veth0 up
sudo ip link set dev veth1 up
sudo ip link set veth0 mtu 9500
sudo ip link set veth1 mtu 9500
sudo sysctl net.ipv6.conf.veth0.disable_ipv6=1
sudo sysctl net.ipv6.conf.veth1.disable_ipv6=1

# Second pair: veth2-veth3
sudo ip link add name veth2 type veth peer name veth3
sudo ip link set dev veth2 up
sudo ip link set dev veth3 up
sudo ip link set veth2 mtu 9500
sudo ip link set veth3 mtu 9500
sudo sysctl net.ipv6.conf.veth2.disable_ipv6=1
sudo sysctl net.ipv6.conf.veth3.disable_ipv6=1

# Second pair: veth4-veth5
sudo ip link add name veth4 type veth peer name veth5
sudo ip link set dev veth4 up
sudo ip link set dev veth5 up
sudo ip link set veth4 mtu 9500
sudo ip link set veth5 mtu 9500
sudo sysctl net.ipv6.conf.veth4.disable_ipv6=1
sudo sysctl net.ipv6.conf.veth5.disable_ipv6=1
