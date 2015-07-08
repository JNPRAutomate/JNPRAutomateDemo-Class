configure
delete system services web-management
delete security policies from-zone trust to-zone trust
delete security policies from-zone untrust to-zone trust
delete security zones security-zone untrust screen
delete security screen ids-option untrust-screen
set system login user netconf class super-user authentication encrypted-password "$1$b1e7j6ek$4d/RrS9Zw/n6PrmyxKdN7."
set interfaces lo0.0 family inet address 123.123.123.123/32
delete security zones security-zone trust
delete security zones security-zone untrust
set security zones security-zone untrust interfaces ge-0/0/1.0
set security zones security-zone untrust host-inbound-traffic system-services ping
set security zones security-zone untrust host-inbound-traffic system-services traceroute
set security zones security-zone untrust host-inbound-traffic system-services ssh
set security zones security-zone untrust host-inbound-traffic system-services netconf
set security zones security-zone trust interfaces ge-0/0/2.0
set security zones security-zone trust host-inbound-traffic system-services ping
set security zones security-zone trust host-inbound-traffic system-services traceroute
set security zones security-zone trust host-inbound-traffic protocols ospf
set security zones security-zone vpn host-inbound-traffic system-services ping
set security zones security-zone vpn host-inbound-traffic system-services traceroute
set security zones security-zone vpn host-inbound-traffic protocols ospf
set security zones security-zone trust interfaces lo0.0
set protocols ospf area 0 interface lo0.0 passive
set protocols ospf area 0 interface ge-0/0/2.0 passive
set security flow tcp-mss ipsec-vpn mss 1350
set security policies from-zone trust to-zone vpn policy AllowVPN match source-address any
set security policies from-zone trust to-zone vpn policy AllowVPN match destination-address any
set security policies from-zone trust to-zone vpn policy AllowVPN match application any
set security policies from-zone trust to-zone vpn policy AllowVPN then permit
set security policies from-zone vpn to-zone trust policy AllowVPN match source-address any
set security policies from-zone vpn to-zone trust policy AllowVPN match destination-address any
set security policies from-zone vpn to-zone trust policy AllowVPN match application any
set security policies from-zone vpn to-zone trust policy AllowVPN then permit
set security ike policy ike-policy1 mode main
set security ike policy ike-policy1 proposal-set standard
set security ike policy ike-policy1 pre-shared-key ascii-text "AwesomePassword123"
set security ipsec policy vpn-policy1 proposal-set standard
commit and-quit
