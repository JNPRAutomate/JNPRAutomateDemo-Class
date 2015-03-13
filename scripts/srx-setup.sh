configure
set system login user netconf class super-user authentication encrypted-password "$1$b1e7j6ek$4d/RrS9Zw/n6PrmyxKdN7."
set security zones security-zone trust interfaces ge-0/0/1.0
set security zones security-zone trust host-inbound-traffic system-services all
set security zones security-zone trust host-inbound-traffic protocols all
commit and-quit
