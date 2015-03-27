export ANSIBLE_LIBRARY=/etc/ansible/roles/
echo "export ANSIBLE_LIBRARY=/etc/ansible/roles/" >> /home/vagrant/.bashrc

/sbin/route add -net 10.10.0.0 netmask 255.255.255.0 gw 172.16.0.1 dev eth1
/sbin/route add -net 192.168.10.0 netmask 255.255.255.0 gw 172.16.0.1 dev eth1
echo "up route add -net 10.10.0.0/24 gw 172.16.0.1 dev eth1" >> /etc/network/interfaces
echo "up route add -net 192.168.10.0/24 gw 172.16.0.1 dev eth1" >> /etc/network/interfaces
