#!/usr/bin/env bash
sudo mv /tmp/gogoHTTPD /usr/local/bin
sudo mv /tmp/gogohttpd.conf /etc/init
sudo chown root:root /usr/local/bin/gogoHTTPD
sudo chmod 655 /usr/local/bin/gogoHTTPD
sudo chown root:root /etc/init/gogohttpd.conf
sudo chmod 644 /etc/init/gogohttpd.conf
sudo service gogohttpd start

export ANSIBLE_LIBRARY=/etc/ansible/roles/
if ! grep -qe "export ANSIBLE_LIBRARY=/etc/ansible/roles/" "/home/vagrant/.bashrc"; then
    cat >> /home/vagrant/.bashrc <<EOF

export ANSIBLE_LIBRARY=/etc/ansible/roles/
EOF
fi

sudo ip r a 10.10.0.0/22 via 172.16.0.1 dev eth1
sudo ip r a 192.168.10.0/24 via 172.16.0.1 dev eth1

cat >> /etc/network/interfaces <<EOF

post-up route add -net 10.10.0.0 netmask 255.255.252.0 gw 172.16.0.1 dev eth1
post-up route add -net 192.168.10.0 netmask 255.255.255.0 gw 172.16.0.1 dev eth1
EOF

sudo apt-get purge network-manager -y
sudo ifdown eth1
sudo ifup eth1
