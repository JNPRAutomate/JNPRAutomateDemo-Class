#!/usr/bin/env bash

ip r a 10.10.0.0/24 via 192.168.10.1 dev eth1
ip r a 10.255.0.0/16 via 192.168.10.1 dev eth1

cat >> /etc/network/interfaces <<EOF

post-up route add -net 10.10.0.0 netmask 255.255.255.0 gw 192.168.10.1 dev eth1
post-up route add -net 10.255.0.0 netmask 255.255.0.0 gw 192.168.10.1 dev eth1
EOF
