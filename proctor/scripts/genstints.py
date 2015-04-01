#!/usr/bin env python

itter = 1

print "configure"

while True:
    if itter == 256:
        break
    print "set interfaces st0.{0} family inet address 10.255.{0}.1/30".format(itter)
    print "set security zones security-zone vpn interfaces st0.{0}".format(itter)
    print "set protocols ospf area 0 interface st0.{0}".format(itter)
    print "set security ike gateway vpngw-id{0} address 10.10.0.1".format(itter)
    print "set security ike gateway vpngw-id{0} external-interface ge-0/0/1.0".format(itter)
    print "set security ike gateway vpngw-id{0} ike-policy ike-policy1".format(itter)
    print "set security ipsec vpn vpn-id{0} ike gateway vpngw-id{0}".format(itter)
    print "set security ipsec vpn vpn-id{0} ike ipsec-policy vpn-policy1".format(itter)
    print "set security ipsec vpn vpn-id{0} bind-interface st0.{0}".format(itter)
    itter = itter + 1

print "commit and-quit"
