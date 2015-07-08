configure
set interfaces st0.1 family inet address 10.255.1.1/30
set security zones security-zone vpn interfaces st0.1
set protocols ospf area 0 interface st0.1
set security ike gateway vpngw-id1 address 10.10.0.1
set security ike gateway vpngw-id1 external-interface ge-0/0/1.0
set security ike gateway vpngw-id1 ike-policy ike-policy1
set security ipsec vpn vpn-id1 ike gateway vpngw-id1
set security ipsec vpn vpn-id1 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id1 bind-interface st0.1
set interfaces st0.2 family inet address 10.255.2.1/30
set security zones security-zone vpn interfaces st0.2
set protocols ospf area 0 interface st0.2
set security ike gateway vpngw-id2 address 10.10.0.1
set security ike gateway vpngw-id2 external-interface ge-0/0/1.0
set security ike gateway vpngw-id2 ike-policy ike-policy1
set security ipsec vpn vpn-id2 ike gateway vpngw-id2
set security ipsec vpn vpn-id2 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id2 bind-interface st0.2
set interfaces st0.3 family inet address 10.255.3.1/30
set security zones security-zone vpn interfaces st0.3
set protocols ospf area 0 interface st0.3
set security ike gateway vpngw-id3 address 10.10.0.1
set security ike gateway vpngw-id3 external-interface ge-0/0/1.0
set security ike gateway vpngw-id3 ike-policy ike-policy1
set security ipsec vpn vpn-id3 ike gateway vpngw-id3
set security ipsec vpn vpn-id3 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id3 bind-interface st0.3
set interfaces st0.4 family inet address 10.255.4.1/30
set security zones security-zone vpn interfaces st0.4
set protocols ospf area 0 interface st0.4
set security ike gateway vpngw-id4 address 10.10.0.1
set security ike gateway vpngw-id4 external-interface ge-0/0/1.0
set security ike gateway vpngw-id4 ike-policy ike-policy1
set security ipsec vpn vpn-id4 ike gateway vpngw-id4
set security ipsec vpn vpn-id4 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id4 bind-interface st0.4
set interfaces st0.5 family inet address 10.255.5.1/30
set security zones security-zone vpn interfaces st0.5
set protocols ospf area 0 interface st0.5
set security ike gateway vpngw-id5 address 10.10.0.1
set security ike gateway vpngw-id5 external-interface ge-0/0/1.0
set security ike gateway vpngw-id5 ike-policy ike-policy1
set security ipsec vpn vpn-id5 ike gateway vpngw-id5
set security ipsec vpn vpn-id5 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id5 bind-interface st0.5
set interfaces st0.6 family inet address 10.255.6.1/30
set security zones security-zone vpn interfaces st0.6
set protocols ospf area 0 interface st0.6
set security ike gateway vpngw-id6 address 10.10.0.1
set security ike gateway vpngw-id6 external-interface ge-0/0/1.0
set security ike gateway vpngw-id6 ike-policy ike-policy1
set security ipsec vpn vpn-id6 ike gateway vpngw-id6
set security ipsec vpn vpn-id6 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id6 bind-interface st0.6
set interfaces st0.7 family inet address 10.255.7.1/30
set security zones security-zone vpn interfaces st0.7
set protocols ospf area 0 interface st0.7
set security ike gateway vpngw-id7 address 10.10.0.1
set security ike gateway vpngw-id7 external-interface ge-0/0/1.0
set security ike gateway vpngw-id7 ike-policy ike-policy1
set security ipsec vpn vpn-id7 ike gateway vpngw-id7
set security ipsec vpn vpn-id7 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id7 bind-interface st0.7
set interfaces st0.8 family inet address 10.255.8.1/30
set security zones security-zone vpn interfaces st0.8
set protocols ospf area 0 interface st0.8
set security ike gateway vpngw-id8 address 10.10.0.1
set security ike gateway vpngw-id8 external-interface ge-0/0/1.0
set security ike gateway vpngw-id8 ike-policy ike-policy1
set security ipsec vpn vpn-id8 ike gateway vpngw-id8
set security ipsec vpn vpn-id8 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id8 bind-interface st0.8
set interfaces st0.9 family inet address 10.255.9.1/30
set security zones security-zone vpn interfaces st0.9
set protocols ospf area 0 interface st0.9
set security ike gateway vpngw-id9 address 10.10.0.1
set security ike gateway vpngw-id9 external-interface ge-0/0/1.0
set security ike gateway vpngw-id9 ike-policy ike-policy1
set security ipsec vpn vpn-id9 ike gateway vpngw-id9
set security ipsec vpn vpn-id9 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id9 bind-interface st0.9
set interfaces st0.10 family inet address 10.255.10.1/30
set security zones security-zone vpn interfaces st0.10
set protocols ospf area 0 interface st0.10
set security ike gateway vpngw-id10 address 10.10.0.1
set security ike gateway vpngw-id10 external-interface ge-0/0/1.0
set security ike gateway vpngw-id10 ike-policy ike-policy1
set security ipsec vpn vpn-id10 ike gateway vpngw-id10
set security ipsec vpn vpn-id10 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id10 bind-interface st0.10
set interfaces st0.11 family inet address 10.255.11.1/30
set security zones security-zone vpn interfaces st0.11
set protocols ospf area 0 interface st0.11
set security ike gateway vpngw-id11 address 10.10.0.1
set security ike gateway vpngw-id11 external-interface ge-0/0/1.0
set security ike gateway vpngw-id11 ike-policy ike-policy1
set security ipsec vpn vpn-id11 ike gateway vpngw-id11
set security ipsec vpn vpn-id11 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id11 bind-interface st0.11
set interfaces st0.12 family inet address 10.255.12.1/30
set security zones security-zone vpn interfaces st0.12
set protocols ospf area 0 interface st0.12
set security ike gateway vpngw-id12 address 10.10.0.1
set security ike gateway vpngw-id12 external-interface ge-0/0/1.0
set security ike gateway vpngw-id12 ike-policy ike-policy1
set security ipsec vpn vpn-id12 ike gateway vpngw-id12
set security ipsec vpn vpn-id12 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id12 bind-interface st0.12
set interfaces st0.13 family inet address 10.255.13.1/30
set security zones security-zone vpn interfaces st0.13
set protocols ospf area 0 interface st0.13
set security ike gateway vpngw-id13 address 10.10.0.1
set security ike gateway vpngw-id13 external-interface ge-0/0/1.0
set security ike gateway vpngw-id13 ike-policy ike-policy1
set security ipsec vpn vpn-id13 ike gateway vpngw-id13
set security ipsec vpn vpn-id13 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id13 bind-interface st0.13
set interfaces st0.14 family inet address 10.255.14.1/30
set security zones security-zone vpn interfaces st0.14
set protocols ospf area 0 interface st0.14
set security ike gateway vpngw-id14 address 10.10.0.1
set security ike gateway vpngw-id14 external-interface ge-0/0/1.0
set security ike gateway vpngw-id14 ike-policy ike-policy1
set security ipsec vpn vpn-id14 ike gateway vpngw-id14
set security ipsec vpn vpn-id14 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id14 bind-interface st0.14
set interfaces st0.15 family inet address 10.255.15.1/30
set security zones security-zone vpn interfaces st0.15
set protocols ospf area 0 interface st0.15
set security ike gateway vpngw-id15 address 10.10.0.1
set security ike gateway vpngw-id15 external-interface ge-0/0/1.0
set security ike gateway vpngw-id15 ike-policy ike-policy1
set security ipsec vpn vpn-id15 ike gateway vpngw-id15
set security ipsec vpn vpn-id15 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id15 bind-interface st0.15
set interfaces st0.16 family inet address 10.255.16.1/30
set security zones security-zone vpn interfaces st0.16
set protocols ospf area 0 interface st0.16
set security ike gateway vpngw-id16 address 10.10.0.1
set security ike gateway vpngw-id16 external-interface ge-0/0/1.0
set security ike gateway vpngw-id16 ike-policy ike-policy1
set security ipsec vpn vpn-id16 ike gateway vpngw-id16
set security ipsec vpn vpn-id16 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id16 bind-interface st0.16
set interfaces st0.17 family inet address 10.255.17.1/30
set security zones security-zone vpn interfaces st0.17
set protocols ospf area 0 interface st0.17
set security ike gateway vpngw-id17 address 10.10.0.1
set security ike gateway vpngw-id17 external-interface ge-0/0/1.0
set security ike gateway vpngw-id17 ike-policy ike-policy1
set security ipsec vpn vpn-id17 ike gateway vpngw-id17
set security ipsec vpn vpn-id17 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id17 bind-interface st0.17
set interfaces st0.18 family inet address 10.255.18.1/30
set security zones security-zone vpn interfaces st0.18
set protocols ospf area 0 interface st0.18
set security ike gateway vpngw-id18 address 10.10.0.1
set security ike gateway vpngw-id18 external-interface ge-0/0/1.0
set security ike gateway vpngw-id18 ike-policy ike-policy1
set security ipsec vpn vpn-id18 ike gateway vpngw-id18
set security ipsec vpn vpn-id18 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id18 bind-interface st0.18
set interfaces st0.19 family inet address 10.255.19.1/30
set security zones security-zone vpn interfaces st0.19
set protocols ospf area 0 interface st0.19
set security ike gateway vpngw-id19 address 10.10.0.1
set security ike gateway vpngw-id19 external-interface ge-0/0/1.0
set security ike gateway vpngw-id19 ike-policy ike-policy1
set security ipsec vpn vpn-id19 ike gateway vpngw-id19
set security ipsec vpn vpn-id19 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id19 bind-interface st0.19
set interfaces st0.20 family inet address 10.255.20.1/30
set security zones security-zone vpn interfaces st0.20
set protocols ospf area 0 interface st0.20
set security ike gateway vpngw-id20 address 10.10.0.1
set security ike gateway vpngw-id20 external-interface ge-0/0/1.0
set security ike gateway vpngw-id20 ike-policy ike-policy1
set security ipsec vpn vpn-id20 ike gateway vpngw-id20
set security ipsec vpn vpn-id20 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id20 bind-interface st0.20
set interfaces st0.21 family inet address 10.255.21.1/30
set security zones security-zone vpn interfaces st0.21
set protocols ospf area 0 interface st0.21
set security ike gateway vpngw-id21 address 10.10.0.1
set security ike gateway vpngw-id21 external-interface ge-0/0/1.0
set security ike gateway vpngw-id21 ike-policy ike-policy1
set security ipsec vpn vpn-id21 ike gateway vpngw-id21
set security ipsec vpn vpn-id21 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id21 bind-interface st0.21
set interfaces st0.22 family inet address 10.255.22.1/30
set security zones security-zone vpn interfaces st0.22
set protocols ospf area 0 interface st0.22
set security ike gateway vpngw-id22 address 10.10.0.1
set security ike gateway vpngw-id22 external-interface ge-0/0/1.0
set security ike gateway vpngw-id22 ike-policy ike-policy1
set security ipsec vpn vpn-id22 ike gateway vpngw-id22
set security ipsec vpn vpn-id22 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id22 bind-interface st0.22
set interfaces st0.23 family inet address 10.255.23.1/30
set security zones security-zone vpn interfaces st0.23
set protocols ospf area 0 interface st0.23
set security ike gateway vpngw-id23 address 10.10.0.1
set security ike gateway vpngw-id23 external-interface ge-0/0/1.0
set security ike gateway vpngw-id23 ike-policy ike-policy1
set security ipsec vpn vpn-id23 ike gateway vpngw-id23
set security ipsec vpn vpn-id23 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id23 bind-interface st0.23
set interfaces st0.24 family inet address 10.255.24.1/30
set security zones security-zone vpn interfaces st0.24
set protocols ospf area 0 interface st0.24
set security ike gateway vpngw-id24 address 10.10.0.1
set security ike gateway vpngw-id24 external-interface ge-0/0/1.0
set security ike gateway vpngw-id24 ike-policy ike-policy1
set security ipsec vpn vpn-id24 ike gateway vpngw-id24
set security ipsec vpn vpn-id24 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id24 bind-interface st0.24
set interfaces st0.25 family inet address 10.255.25.1/30
set security zones security-zone vpn interfaces st0.25
set protocols ospf area 0 interface st0.25
set security ike gateway vpngw-id25 address 10.10.0.1
set security ike gateway vpngw-id25 external-interface ge-0/0/1.0
set security ike gateway vpngw-id25 ike-policy ike-policy1
set security ipsec vpn vpn-id25 ike gateway vpngw-id25
set security ipsec vpn vpn-id25 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id25 bind-interface st0.25
set interfaces st0.26 family inet address 10.255.26.1/30
set security zones security-zone vpn interfaces st0.26
set protocols ospf area 0 interface st0.26
set security ike gateway vpngw-id26 address 10.10.0.1
set security ike gateway vpngw-id26 external-interface ge-0/0/1.0
set security ike gateway vpngw-id26 ike-policy ike-policy1
set security ipsec vpn vpn-id26 ike gateway vpngw-id26
set security ipsec vpn vpn-id26 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id26 bind-interface st0.26
set interfaces st0.27 family inet address 10.255.27.1/30
set security zones security-zone vpn interfaces st0.27
set protocols ospf area 0 interface st0.27
set security ike gateway vpngw-id27 address 10.10.0.1
set security ike gateway vpngw-id27 external-interface ge-0/0/1.0
set security ike gateway vpngw-id27 ike-policy ike-policy1
set security ipsec vpn vpn-id27 ike gateway vpngw-id27
set security ipsec vpn vpn-id27 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id27 bind-interface st0.27
set interfaces st0.28 family inet address 10.255.28.1/30
set security zones security-zone vpn interfaces st0.28
set protocols ospf area 0 interface st0.28
set security ike gateway vpngw-id28 address 10.10.0.1
set security ike gateway vpngw-id28 external-interface ge-0/0/1.0
set security ike gateway vpngw-id28 ike-policy ike-policy1
set security ipsec vpn vpn-id28 ike gateway vpngw-id28
set security ipsec vpn vpn-id28 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id28 bind-interface st0.28
set interfaces st0.29 family inet address 10.255.29.1/30
set security zones security-zone vpn interfaces st0.29
set protocols ospf area 0 interface st0.29
set security ike gateway vpngw-id29 address 10.10.0.1
set security ike gateway vpngw-id29 external-interface ge-0/0/1.0
set security ike gateway vpngw-id29 ike-policy ike-policy1
set security ipsec vpn vpn-id29 ike gateway vpngw-id29
set security ipsec vpn vpn-id29 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id29 bind-interface st0.29
set interfaces st0.30 family inet address 10.255.30.1/30
set security zones security-zone vpn interfaces st0.30
set protocols ospf area 0 interface st0.30
set security ike gateway vpngw-id30 address 10.10.0.1
set security ike gateway vpngw-id30 external-interface ge-0/0/1.0
set security ike gateway vpngw-id30 ike-policy ike-policy1
set security ipsec vpn vpn-id30 ike gateway vpngw-id30
set security ipsec vpn vpn-id30 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id30 bind-interface st0.30
set interfaces st0.31 family inet address 10.255.31.1/30
set security zones security-zone vpn interfaces st0.31
set protocols ospf area 0 interface st0.31
set security ike gateway vpngw-id31 address 10.10.0.1
set security ike gateway vpngw-id31 external-interface ge-0/0/1.0
set security ike gateway vpngw-id31 ike-policy ike-policy1
set security ipsec vpn vpn-id31 ike gateway vpngw-id31
set security ipsec vpn vpn-id31 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id31 bind-interface st0.31
set interfaces st0.32 family inet address 10.255.32.1/30
set security zones security-zone vpn interfaces st0.32
set protocols ospf area 0 interface st0.32
set security ike gateway vpngw-id32 address 10.10.0.1
set security ike gateway vpngw-id32 external-interface ge-0/0/1.0
set security ike gateway vpngw-id32 ike-policy ike-policy1
set security ipsec vpn vpn-id32 ike gateway vpngw-id32
set security ipsec vpn vpn-id32 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id32 bind-interface st0.32
set interfaces st0.33 family inet address 10.255.33.1/30
set security zones security-zone vpn interfaces st0.33
set protocols ospf area 0 interface st0.33
set security ike gateway vpngw-id33 address 10.10.0.1
set security ike gateway vpngw-id33 external-interface ge-0/0/1.0
set security ike gateway vpngw-id33 ike-policy ike-policy1
set security ipsec vpn vpn-id33 ike gateway vpngw-id33
set security ipsec vpn vpn-id33 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id33 bind-interface st0.33
set interfaces st0.34 family inet address 10.255.34.1/30
set security zones security-zone vpn interfaces st0.34
set protocols ospf area 0 interface st0.34
set security ike gateway vpngw-id34 address 10.10.0.1
set security ike gateway vpngw-id34 external-interface ge-0/0/1.0
set security ike gateway vpngw-id34 ike-policy ike-policy1
set security ipsec vpn vpn-id34 ike gateway vpngw-id34
set security ipsec vpn vpn-id34 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id34 bind-interface st0.34
set interfaces st0.35 family inet address 10.255.35.1/30
set security zones security-zone vpn interfaces st0.35
set protocols ospf area 0 interface st0.35
set security ike gateway vpngw-id35 address 10.10.0.1
set security ike gateway vpngw-id35 external-interface ge-0/0/1.0
set security ike gateway vpngw-id35 ike-policy ike-policy1
set security ipsec vpn vpn-id35 ike gateway vpngw-id35
set security ipsec vpn vpn-id35 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id35 bind-interface st0.35
set interfaces st0.36 family inet address 10.255.36.1/30
set security zones security-zone vpn interfaces st0.36
set protocols ospf area 0 interface st0.36
set security ike gateway vpngw-id36 address 10.10.0.1
set security ike gateway vpngw-id36 external-interface ge-0/0/1.0
set security ike gateway vpngw-id36 ike-policy ike-policy1
set security ipsec vpn vpn-id36 ike gateway vpngw-id36
set security ipsec vpn vpn-id36 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id36 bind-interface st0.36
set interfaces st0.37 family inet address 10.255.37.1/30
set security zones security-zone vpn interfaces st0.37
set protocols ospf area 0 interface st0.37
set security ike gateway vpngw-id37 address 10.10.0.1
set security ike gateway vpngw-id37 external-interface ge-0/0/1.0
set security ike gateway vpngw-id37 ike-policy ike-policy1
set security ipsec vpn vpn-id37 ike gateway vpngw-id37
set security ipsec vpn vpn-id37 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id37 bind-interface st0.37
set interfaces st0.38 family inet address 10.255.38.1/30
set security zones security-zone vpn interfaces st0.38
set protocols ospf area 0 interface st0.38
set security ike gateway vpngw-id38 address 10.10.0.1
set security ike gateway vpngw-id38 external-interface ge-0/0/1.0
set security ike gateway vpngw-id38 ike-policy ike-policy1
set security ipsec vpn vpn-id38 ike gateway vpngw-id38
set security ipsec vpn vpn-id38 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id38 bind-interface st0.38
set interfaces st0.39 family inet address 10.255.39.1/30
set security zones security-zone vpn interfaces st0.39
set protocols ospf area 0 interface st0.39
set security ike gateway vpngw-id39 address 10.10.0.1
set security ike gateway vpngw-id39 external-interface ge-0/0/1.0
set security ike gateway vpngw-id39 ike-policy ike-policy1
set security ipsec vpn vpn-id39 ike gateway vpngw-id39
set security ipsec vpn vpn-id39 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id39 bind-interface st0.39
set interfaces st0.40 family inet address 10.255.40.1/30
set security zones security-zone vpn interfaces st0.40
set protocols ospf area 0 interface st0.40
set security ike gateway vpngw-id40 address 10.10.0.1
set security ike gateway vpngw-id40 external-interface ge-0/0/1.0
set security ike gateway vpngw-id40 ike-policy ike-policy1
set security ipsec vpn vpn-id40 ike gateway vpngw-id40
set security ipsec vpn vpn-id40 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id40 bind-interface st0.40
set interfaces st0.41 family inet address 10.255.41.1/30
set security zones security-zone vpn interfaces st0.41
set protocols ospf area 0 interface st0.41
set security ike gateway vpngw-id41 address 10.10.0.1
set security ike gateway vpngw-id41 external-interface ge-0/0/1.0
set security ike gateway vpngw-id41 ike-policy ike-policy1
set security ipsec vpn vpn-id41 ike gateway vpngw-id41
set security ipsec vpn vpn-id41 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id41 bind-interface st0.41
set interfaces st0.42 family inet address 10.255.42.1/30
set security zones security-zone vpn interfaces st0.42
set protocols ospf area 0 interface st0.42
set security ike gateway vpngw-id42 address 10.10.0.1
set security ike gateway vpngw-id42 external-interface ge-0/0/1.0
set security ike gateway vpngw-id42 ike-policy ike-policy1
set security ipsec vpn vpn-id42 ike gateway vpngw-id42
set security ipsec vpn vpn-id42 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id42 bind-interface st0.42
set interfaces st0.43 family inet address 10.255.43.1/30
set security zones security-zone vpn interfaces st0.43
set protocols ospf area 0 interface st0.43
set security ike gateway vpngw-id43 address 10.10.0.1
set security ike gateway vpngw-id43 external-interface ge-0/0/1.0
set security ike gateway vpngw-id43 ike-policy ike-policy1
set security ipsec vpn vpn-id43 ike gateway vpngw-id43
set security ipsec vpn vpn-id43 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id43 bind-interface st0.43
set interfaces st0.44 family inet address 10.255.44.1/30
set security zones security-zone vpn interfaces st0.44
set protocols ospf area 0 interface st0.44
set security ike gateway vpngw-id44 address 10.10.0.1
set security ike gateway vpngw-id44 external-interface ge-0/0/1.0
set security ike gateway vpngw-id44 ike-policy ike-policy1
set security ipsec vpn vpn-id44 ike gateway vpngw-id44
set security ipsec vpn vpn-id44 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id44 bind-interface st0.44
set interfaces st0.45 family inet address 10.255.45.1/30
set security zones security-zone vpn interfaces st0.45
set protocols ospf area 0 interface st0.45
set security ike gateway vpngw-id45 address 10.10.0.1
set security ike gateway vpngw-id45 external-interface ge-0/0/1.0
set security ike gateway vpngw-id45 ike-policy ike-policy1
set security ipsec vpn vpn-id45 ike gateway vpngw-id45
set security ipsec vpn vpn-id45 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id45 bind-interface st0.45
set interfaces st0.46 family inet address 10.255.46.1/30
set security zones security-zone vpn interfaces st0.46
set protocols ospf area 0 interface st0.46
set security ike gateway vpngw-id46 address 10.10.0.1
set security ike gateway vpngw-id46 external-interface ge-0/0/1.0
set security ike gateway vpngw-id46 ike-policy ike-policy1
set security ipsec vpn vpn-id46 ike gateway vpngw-id46
set security ipsec vpn vpn-id46 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id46 bind-interface st0.46
set interfaces st0.47 family inet address 10.255.47.1/30
set security zones security-zone vpn interfaces st0.47
set protocols ospf area 0 interface st0.47
set security ike gateway vpngw-id47 address 10.10.0.1
set security ike gateway vpngw-id47 external-interface ge-0/0/1.0
set security ike gateway vpngw-id47 ike-policy ike-policy1
set security ipsec vpn vpn-id47 ike gateway vpngw-id47
set security ipsec vpn vpn-id47 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id47 bind-interface st0.47
set interfaces st0.48 family inet address 10.255.48.1/30
set security zones security-zone vpn interfaces st0.48
set protocols ospf area 0 interface st0.48
set security ike gateway vpngw-id48 address 10.10.0.1
set security ike gateway vpngw-id48 external-interface ge-0/0/1.0
set security ike gateway vpngw-id48 ike-policy ike-policy1
set security ipsec vpn vpn-id48 ike gateway vpngw-id48
set security ipsec vpn vpn-id48 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id48 bind-interface st0.48
set interfaces st0.49 family inet address 10.255.49.1/30
set security zones security-zone vpn interfaces st0.49
set protocols ospf area 0 interface st0.49
set security ike gateway vpngw-id49 address 10.10.0.1
set security ike gateway vpngw-id49 external-interface ge-0/0/1.0
set security ike gateway vpngw-id49 ike-policy ike-policy1
set security ipsec vpn vpn-id49 ike gateway vpngw-id49
set security ipsec vpn vpn-id49 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id49 bind-interface st0.49
set interfaces st0.50 family inet address 10.255.50.1/30
set security zones security-zone vpn interfaces st0.50
set protocols ospf area 0 interface st0.50
set security ike gateway vpngw-id50 address 10.10.0.1
set security ike gateway vpngw-id50 external-interface ge-0/0/1.0
set security ike gateway vpngw-id50 ike-policy ike-policy1
set security ipsec vpn vpn-id50 ike gateway vpngw-id50
set security ipsec vpn vpn-id50 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id50 bind-interface st0.50
set interfaces st0.51 family inet address 10.255.51.1/30
set security zones security-zone vpn interfaces st0.51
set protocols ospf area 0 interface st0.51
set security ike gateway vpngw-id51 address 10.10.0.1
set security ike gateway vpngw-id51 external-interface ge-0/0/1.0
set security ike gateway vpngw-id51 ike-policy ike-policy1
set security ipsec vpn vpn-id51 ike gateway vpngw-id51
set security ipsec vpn vpn-id51 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id51 bind-interface st0.51
set interfaces st0.52 family inet address 10.255.52.1/30
set security zones security-zone vpn interfaces st0.52
set protocols ospf area 0 interface st0.52
set security ike gateway vpngw-id52 address 10.10.0.1
set security ike gateway vpngw-id52 external-interface ge-0/0/1.0
set security ike gateway vpngw-id52 ike-policy ike-policy1
set security ipsec vpn vpn-id52 ike gateway vpngw-id52
set security ipsec vpn vpn-id52 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id52 bind-interface st0.52
set interfaces st0.53 family inet address 10.255.53.1/30
set security zones security-zone vpn interfaces st0.53
set protocols ospf area 0 interface st0.53
set security ike gateway vpngw-id53 address 10.10.0.1
set security ike gateway vpngw-id53 external-interface ge-0/0/1.0
set security ike gateway vpngw-id53 ike-policy ike-policy1
set security ipsec vpn vpn-id53 ike gateway vpngw-id53
set security ipsec vpn vpn-id53 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id53 bind-interface st0.53
set interfaces st0.54 family inet address 10.255.54.1/30
set security zones security-zone vpn interfaces st0.54
set protocols ospf area 0 interface st0.54
set security ike gateway vpngw-id54 address 10.10.0.1
set security ike gateway vpngw-id54 external-interface ge-0/0/1.0
set security ike gateway vpngw-id54 ike-policy ike-policy1
set security ipsec vpn vpn-id54 ike gateway vpngw-id54
set security ipsec vpn vpn-id54 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id54 bind-interface st0.54
set interfaces st0.55 family inet address 10.255.55.1/30
set security zones security-zone vpn interfaces st0.55
set protocols ospf area 0 interface st0.55
set security ike gateway vpngw-id55 address 10.10.0.1
set security ike gateway vpngw-id55 external-interface ge-0/0/1.0
set security ike gateway vpngw-id55 ike-policy ike-policy1
set security ipsec vpn vpn-id55 ike gateway vpngw-id55
set security ipsec vpn vpn-id55 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id55 bind-interface st0.55
set interfaces st0.56 family inet address 10.255.56.1/30
set security zones security-zone vpn interfaces st0.56
set protocols ospf area 0 interface st0.56
set security ike gateway vpngw-id56 address 10.10.0.1
set security ike gateway vpngw-id56 external-interface ge-0/0/1.0
set security ike gateway vpngw-id56 ike-policy ike-policy1
set security ipsec vpn vpn-id56 ike gateway vpngw-id56
set security ipsec vpn vpn-id56 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id56 bind-interface st0.56
set interfaces st0.57 family inet address 10.255.57.1/30
set security zones security-zone vpn interfaces st0.57
set protocols ospf area 0 interface st0.57
set security ike gateway vpngw-id57 address 10.10.0.1
set security ike gateway vpngw-id57 external-interface ge-0/0/1.0
set security ike gateway vpngw-id57 ike-policy ike-policy1
set security ipsec vpn vpn-id57 ike gateway vpngw-id57
set security ipsec vpn vpn-id57 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id57 bind-interface st0.57
set interfaces st0.58 family inet address 10.255.58.1/30
set security zones security-zone vpn interfaces st0.58
set protocols ospf area 0 interface st0.58
set security ike gateway vpngw-id58 address 10.10.0.1
set security ike gateway vpngw-id58 external-interface ge-0/0/1.0
set security ike gateway vpngw-id58 ike-policy ike-policy1
set security ipsec vpn vpn-id58 ike gateway vpngw-id58
set security ipsec vpn vpn-id58 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id58 bind-interface st0.58
set interfaces st0.59 family inet address 10.255.59.1/30
set security zones security-zone vpn interfaces st0.59
set protocols ospf area 0 interface st0.59
set security ike gateway vpngw-id59 address 10.10.0.1
set security ike gateway vpngw-id59 external-interface ge-0/0/1.0
set security ike gateway vpngw-id59 ike-policy ike-policy1
set security ipsec vpn vpn-id59 ike gateway vpngw-id59
set security ipsec vpn vpn-id59 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id59 bind-interface st0.59
set interfaces st0.60 family inet address 10.255.60.1/30
set security zones security-zone vpn interfaces st0.60
set protocols ospf area 0 interface st0.60
set security ike gateway vpngw-id60 address 10.10.0.1
set security ike gateway vpngw-id60 external-interface ge-0/0/1.0
set security ike gateway vpngw-id60 ike-policy ike-policy1
set security ipsec vpn vpn-id60 ike gateway vpngw-id60
set security ipsec vpn vpn-id60 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id60 bind-interface st0.60
set interfaces st0.61 family inet address 10.255.61.1/30
set security zones security-zone vpn interfaces st0.61
set protocols ospf area 0 interface st0.61
set security ike gateway vpngw-id61 address 10.10.0.1
set security ike gateway vpngw-id61 external-interface ge-0/0/1.0
set security ike gateway vpngw-id61 ike-policy ike-policy1
set security ipsec vpn vpn-id61 ike gateway vpngw-id61
set security ipsec vpn vpn-id61 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id61 bind-interface st0.61
set interfaces st0.62 family inet address 10.255.62.1/30
set security zones security-zone vpn interfaces st0.62
set protocols ospf area 0 interface st0.62
set security ike gateway vpngw-id62 address 10.10.0.1
set security ike gateway vpngw-id62 external-interface ge-0/0/1.0
set security ike gateway vpngw-id62 ike-policy ike-policy1
set security ipsec vpn vpn-id62 ike gateway vpngw-id62
set security ipsec vpn vpn-id62 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id62 bind-interface st0.62
set interfaces st0.63 family inet address 10.255.63.1/30
set security zones security-zone vpn interfaces st0.63
set protocols ospf area 0 interface st0.63
set security ike gateway vpngw-id63 address 10.10.0.1
set security ike gateway vpngw-id63 external-interface ge-0/0/1.0
set security ike gateway vpngw-id63 ike-policy ike-policy1
set security ipsec vpn vpn-id63 ike gateway vpngw-id63
set security ipsec vpn vpn-id63 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id63 bind-interface st0.63
set interfaces st0.64 family inet address 10.255.64.1/30
set security zones security-zone vpn interfaces st0.64
set protocols ospf area 0 interface st0.64
set security ike gateway vpngw-id64 address 10.10.0.1
set security ike gateway vpngw-id64 external-interface ge-0/0/1.0
set security ike gateway vpngw-id64 ike-policy ike-policy1
set security ipsec vpn vpn-id64 ike gateway vpngw-id64
set security ipsec vpn vpn-id64 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id64 bind-interface st0.64
set interfaces st0.65 family inet address 10.255.65.1/30
set security zones security-zone vpn interfaces st0.65
set protocols ospf area 0 interface st0.65
set security ike gateway vpngw-id65 address 10.10.0.1
set security ike gateway vpngw-id65 external-interface ge-0/0/1.0
set security ike gateway vpngw-id65 ike-policy ike-policy1
set security ipsec vpn vpn-id65 ike gateway vpngw-id65
set security ipsec vpn vpn-id65 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id65 bind-interface st0.65
set interfaces st0.66 family inet address 10.255.66.1/30
set security zones security-zone vpn interfaces st0.66
set protocols ospf area 0 interface st0.66
set security ike gateway vpngw-id66 address 10.10.0.1
set security ike gateway vpngw-id66 external-interface ge-0/0/1.0
set security ike gateway vpngw-id66 ike-policy ike-policy1
set security ipsec vpn vpn-id66 ike gateway vpngw-id66
set security ipsec vpn vpn-id66 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id66 bind-interface st0.66
set interfaces st0.67 family inet address 10.255.67.1/30
set security zones security-zone vpn interfaces st0.67
set protocols ospf area 0 interface st0.67
set security ike gateway vpngw-id67 address 10.10.0.1
set security ike gateway vpngw-id67 external-interface ge-0/0/1.0
set security ike gateway vpngw-id67 ike-policy ike-policy1
set security ipsec vpn vpn-id67 ike gateway vpngw-id67
set security ipsec vpn vpn-id67 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id67 bind-interface st0.67
set interfaces st0.68 family inet address 10.255.68.1/30
set security zones security-zone vpn interfaces st0.68
set protocols ospf area 0 interface st0.68
set security ike gateway vpngw-id68 address 10.10.0.1
set security ike gateway vpngw-id68 external-interface ge-0/0/1.0
set security ike gateway vpngw-id68 ike-policy ike-policy1
set security ipsec vpn vpn-id68 ike gateway vpngw-id68
set security ipsec vpn vpn-id68 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id68 bind-interface st0.68
set interfaces st0.69 family inet address 10.255.69.1/30
set security zones security-zone vpn interfaces st0.69
set protocols ospf area 0 interface st0.69
set security ike gateway vpngw-id69 address 10.10.0.1
set security ike gateway vpngw-id69 external-interface ge-0/0/1.0
set security ike gateway vpngw-id69 ike-policy ike-policy1
set security ipsec vpn vpn-id69 ike gateway vpngw-id69
set security ipsec vpn vpn-id69 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id69 bind-interface st0.69
set interfaces st0.70 family inet address 10.255.70.1/30
set security zones security-zone vpn interfaces st0.70
set protocols ospf area 0 interface st0.70
set security ike gateway vpngw-id70 address 10.10.0.1
set security ike gateway vpngw-id70 external-interface ge-0/0/1.0
set security ike gateway vpngw-id70 ike-policy ike-policy1
set security ipsec vpn vpn-id70 ike gateway vpngw-id70
set security ipsec vpn vpn-id70 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id70 bind-interface st0.70
set interfaces st0.71 family inet address 10.255.71.1/30
set security zones security-zone vpn interfaces st0.71
set protocols ospf area 0 interface st0.71
set security ike gateway vpngw-id71 address 10.10.0.1
set security ike gateway vpngw-id71 external-interface ge-0/0/1.0
set security ike gateway vpngw-id71 ike-policy ike-policy1
set security ipsec vpn vpn-id71 ike gateway vpngw-id71
set security ipsec vpn vpn-id71 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id71 bind-interface st0.71
set interfaces st0.72 family inet address 10.255.72.1/30
set security zones security-zone vpn interfaces st0.72
set protocols ospf area 0 interface st0.72
set security ike gateway vpngw-id72 address 10.10.0.1
set security ike gateway vpngw-id72 external-interface ge-0/0/1.0
set security ike gateway vpngw-id72 ike-policy ike-policy1
set security ipsec vpn vpn-id72 ike gateway vpngw-id72
set security ipsec vpn vpn-id72 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id72 bind-interface st0.72
set interfaces st0.73 family inet address 10.255.73.1/30
set security zones security-zone vpn interfaces st0.73
set protocols ospf area 0 interface st0.73
set security ike gateway vpngw-id73 address 10.10.0.1
set security ike gateway vpngw-id73 external-interface ge-0/0/1.0
set security ike gateway vpngw-id73 ike-policy ike-policy1
set security ipsec vpn vpn-id73 ike gateway vpngw-id73
set security ipsec vpn vpn-id73 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id73 bind-interface st0.73
set interfaces st0.74 family inet address 10.255.74.1/30
set security zones security-zone vpn interfaces st0.74
set protocols ospf area 0 interface st0.74
set security ike gateway vpngw-id74 address 10.10.0.1
set security ike gateway vpngw-id74 external-interface ge-0/0/1.0
set security ike gateway vpngw-id74 ike-policy ike-policy1
set security ipsec vpn vpn-id74 ike gateway vpngw-id74
set security ipsec vpn vpn-id74 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id74 bind-interface st0.74
set interfaces st0.75 family inet address 10.255.75.1/30
set security zones security-zone vpn interfaces st0.75
set protocols ospf area 0 interface st0.75
set security ike gateway vpngw-id75 address 10.10.0.1
set security ike gateway vpngw-id75 external-interface ge-0/0/1.0
set security ike gateway vpngw-id75 ike-policy ike-policy1
set security ipsec vpn vpn-id75 ike gateway vpngw-id75
set security ipsec vpn vpn-id75 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id75 bind-interface st0.75
set interfaces st0.76 family inet address 10.255.76.1/30
set security zones security-zone vpn interfaces st0.76
set protocols ospf area 0 interface st0.76
set security ike gateway vpngw-id76 address 10.10.0.1
set security ike gateway vpngw-id76 external-interface ge-0/0/1.0
set security ike gateway vpngw-id76 ike-policy ike-policy1
set security ipsec vpn vpn-id76 ike gateway vpngw-id76
set security ipsec vpn vpn-id76 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id76 bind-interface st0.76
set interfaces st0.77 family inet address 10.255.77.1/30
set security zones security-zone vpn interfaces st0.77
set protocols ospf area 0 interface st0.77
set security ike gateway vpngw-id77 address 10.10.0.1
set security ike gateway vpngw-id77 external-interface ge-0/0/1.0
set security ike gateway vpngw-id77 ike-policy ike-policy1
set security ipsec vpn vpn-id77 ike gateway vpngw-id77
set security ipsec vpn vpn-id77 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id77 bind-interface st0.77
set interfaces st0.78 family inet address 10.255.78.1/30
set security zones security-zone vpn interfaces st0.78
set protocols ospf area 0 interface st0.78
set security ike gateway vpngw-id78 address 10.10.0.1
set security ike gateway vpngw-id78 external-interface ge-0/0/1.0
set security ike gateway vpngw-id78 ike-policy ike-policy1
set security ipsec vpn vpn-id78 ike gateway vpngw-id78
set security ipsec vpn vpn-id78 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id78 bind-interface st0.78
set interfaces st0.79 family inet address 10.255.79.1/30
set security zones security-zone vpn interfaces st0.79
set protocols ospf area 0 interface st0.79
set security ike gateway vpngw-id79 address 10.10.0.1
set security ike gateway vpngw-id79 external-interface ge-0/0/1.0
set security ike gateway vpngw-id79 ike-policy ike-policy1
set security ipsec vpn vpn-id79 ike gateway vpngw-id79
set security ipsec vpn vpn-id79 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id79 bind-interface st0.79
set interfaces st0.80 family inet address 10.255.80.1/30
set security zones security-zone vpn interfaces st0.80
set protocols ospf area 0 interface st0.80
set security ike gateway vpngw-id80 address 10.10.0.1
set security ike gateway vpngw-id80 external-interface ge-0/0/1.0
set security ike gateway vpngw-id80 ike-policy ike-policy1
set security ipsec vpn vpn-id80 ike gateway vpngw-id80
set security ipsec vpn vpn-id80 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id80 bind-interface st0.80
set interfaces st0.81 family inet address 10.255.81.1/30
set security zones security-zone vpn interfaces st0.81
set protocols ospf area 0 interface st0.81
set security ike gateway vpngw-id81 address 10.10.0.1
set security ike gateway vpngw-id81 external-interface ge-0/0/1.0
set security ike gateway vpngw-id81 ike-policy ike-policy1
set security ipsec vpn vpn-id81 ike gateway vpngw-id81
set security ipsec vpn vpn-id81 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id81 bind-interface st0.81
set interfaces st0.82 family inet address 10.255.82.1/30
set security zones security-zone vpn interfaces st0.82
set protocols ospf area 0 interface st0.82
set security ike gateway vpngw-id82 address 10.10.0.1
set security ike gateway vpngw-id82 external-interface ge-0/0/1.0
set security ike gateway vpngw-id82 ike-policy ike-policy1
set security ipsec vpn vpn-id82 ike gateway vpngw-id82
set security ipsec vpn vpn-id82 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id82 bind-interface st0.82
set interfaces st0.83 family inet address 10.255.83.1/30
set security zones security-zone vpn interfaces st0.83
set protocols ospf area 0 interface st0.83
set security ike gateway vpngw-id83 address 10.10.0.1
set security ike gateway vpngw-id83 external-interface ge-0/0/1.0
set security ike gateway vpngw-id83 ike-policy ike-policy1
set security ipsec vpn vpn-id83 ike gateway vpngw-id83
set security ipsec vpn vpn-id83 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id83 bind-interface st0.83
set interfaces st0.84 family inet address 10.255.84.1/30
set security zones security-zone vpn interfaces st0.84
set protocols ospf area 0 interface st0.84
set security ike gateway vpngw-id84 address 10.10.0.1
set security ike gateway vpngw-id84 external-interface ge-0/0/1.0
set security ike gateway vpngw-id84 ike-policy ike-policy1
set security ipsec vpn vpn-id84 ike gateway vpngw-id84
set security ipsec vpn vpn-id84 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id84 bind-interface st0.84
set interfaces st0.85 family inet address 10.255.85.1/30
set security zones security-zone vpn interfaces st0.85
set protocols ospf area 0 interface st0.85
set security ike gateway vpngw-id85 address 10.10.0.1
set security ike gateway vpngw-id85 external-interface ge-0/0/1.0
set security ike gateway vpngw-id85 ike-policy ike-policy1
set security ipsec vpn vpn-id85 ike gateway vpngw-id85
set security ipsec vpn vpn-id85 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id85 bind-interface st0.85
set interfaces st0.86 family inet address 10.255.86.1/30
set security zones security-zone vpn interfaces st0.86
set protocols ospf area 0 interface st0.86
set security ike gateway vpngw-id86 address 10.10.0.1
set security ike gateway vpngw-id86 external-interface ge-0/0/1.0
set security ike gateway vpngw-id86 ike-policy ike-policy1
set security ipsec vpn vpn-id86 ike gateway vpngw-id86
set security ipsec vpn vpn-id86 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id86 bind-interface st0.86
set interfaces st0.87 family inet address 10.255.87.1/30
set security zones security-zone vpn interfaces st0.87
set protocols ospf area 0 interface st0.87
set security ike gateway vpngw-id87 address 10.10.0.1
set security ike gateway vpngw-id87 external-interface ge-0/0/1.0
set security ike gateway vpngw-id87 ike-policy ike-policy1
set security ipsec vpn vpn-id87 ike gateway vpngw-id87
set security ipsec vpn vpn-id87 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id87 bind-interface st0.87
set interfaces st0.88 family inet address 10.255.88.1/30
set security zones security-zone vpn interfaces st0.88
set protocols ospf area 0 interface st0.88
set security ike gateway vpngw-id88 address 10.10.0.1
set security ike gateway vpngw-id88 external-interface ge-0/0/1.0
set security ike gateway vpngw-id88 ike-policy ike-policy1
set security ipsec vpn vpn-id88 ike gateway vpngw-id88
set security ipsec vpn vpn-id88 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id88 bind-interface st0.88
set interfaces st0.89 family inet address 10.255.89.1/30
set security zones security-zone vpn interfaces st0.89
set protocols ospf area 0 interface st0.89
set security ike gateway vpngw-id89 address 10.10.0.1
set security ike gateway vpngw-id89 external-interface ge-0/0/1.0
set security ike gateway vpngw-id89 ike-policy ike-policy1
set security ipsec vpn vpn-id89 ike gateway vpngw-id89
set security ipsec vpn vpn-id89 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id89 bind-interface st0.89
set interfaces st0.90 family inet address 10.255.90.1/30
set security zones security-zone vpn interfaces st0.90
set protocols ospf area 0 interface st0.90
set security ike gateway vpngw-id90 address 10.10.0.1
set security ike gateway vpngw-id90 external-interface ge-0/0/1.0
set security ike gateway vpngw-id90 ike-policy ike-policy1
set security ipsec vpn vpn-id90 ike gateway vpngw-id90
set security ipsec vpn vpn-id90 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id90 bind-interface st0.90
set interfaces st0.91 family inet address 10.255.91.1/30
set security zones security-zone vpn interfaces st0.91
set protocols ospf area 0 interface st0.91
set security ike gateway vpngw-id91 address 10.10.0.1
set security ike gateway vpngw-id91 external-interface ge-0/0/1.0
set security ike gateway vpngw-id91 ike-policy ike-policy1
set security ipsec vpn vpn-id91 ike gateway vpngw-id91
set security ipsec vpn vpn-id91 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id91 bind-interface st0.91
set interfaces st0.92 family inet address 10.255.92.1/30
set security zones security-zone vpn interfaces st0.92
set protocols ospf area 0 interface st0.92
set security ike gateway vpngw-id92 address 10.10.0.1
set security ike gateway vpngw-id92 external-interface ge-0/0/1.0
set security ike gateway vpngw-id92 ike-policy ike-policy1
set security ipsec vpn vpn-id92 ike gateway vpngw-id92
set security ipsec vpn vpn-id92 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id92 bind-interface st0.92
set interfaces st0.93 family inet address 10.255.93.1/30
set security zones security-zone vpn interfaces st0.93
set protocols ospf area 0 interface st0.93
set security ike gateway vpngw-id93 address 10.10.0.1
set security ike gateway vpngw-id93 external-interface ge-0/0/1.0
set security ike gateway vpngw-id93 ike-policy ike-policy1
set security ipsec vpn vpn-id93 ike gateway vpngw-id93
set security ipsec vpn vpn-id93 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id93 bind-interface st0.93
set interfaces st0.94 family inet address 10.255.94.1/30
set security zones security-zone vpn interfaces st0.94
set protocols ospf area 0 interface st0.94
set security ike gateway vpngw-id94 address 10.10.0.1
set security ike gateway vpngw-id94 external-interface ge-0/0/1.0
set security ike gateway vpngw-id94 ike-policy ike-policy1
set security ipsec vpn vpn-id94 ike gateway vpngw-id94
set security ipsec vpn vpn-id94 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id94 bind-interface st0.94
set interfaces st0.95 family inet address 10.255.95.1/30
set security zones security-zone vpn interfaces st0.95
set protocols ospf area 0 interface st0.95
set security ike gateway vpngw-id95 address 10.10.0.1
set security ike gateway vpngw-id95 external-interface ge-0/0/1.0
set security ike gateway vpngw-id95 ike-policy ike-policy1
set security ipsec vpn vpn-id95 ike gateway vpngw-id95
set security ipsec vpn vpn-id95 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id95 bind-interface st0.95
set interfaces st0.96 family inet address 10.255.96.1/30
set security zones security-zone vpn interfaces st0.96
set protocols ospf area 0 interface st0.96
set security ike gateway vpngw-id96 address 10.10.0.1
set security ike gateway vpngw-id96 external-interface ge-0/0/1.0
set security ike gateway vpngw-id96 ike-policy ike-policy1
set security ipsec vpn vpn-id96 ike gateway vpngw-id96
set security ipsec vpn vpn-id96 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id96 bind-interface st0.96
set interfaces st0.97 family inet address 10.255.97.1/30
set security zones security-zone vpn interfaces st0.97
set protocols ospf area 0 interface st0.97
set security ike gateway vpngw-id97 address 10.10.0.1
set security ike gateway vpngw-id97 external-interface ge-0/0/1.0
set security ike gateway vpngw-id97 ike-policy ike-policy1
set security ipsec vpn vpn-id97 ike gateway vpngw-id97
set security ipsec vpn vpn-id97 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id97 bind-interface st0.97
set interfaces st0.98 family inet address 10.255.98.1/30
set security zones security-zone vpn interfaces st0.98
set protocols ospf area 0 interface st0.98
set security ike gateway vpngw-id98 address 10.10.0.1
set security ike gateway vpngw-id98 external-interface ge-0/0/1.0
set security ike gateway vpngw-id98 ike-policy ike-policy1
set security ipsec vpn vpn-id98 ike gateway vpngw-id98
set security ipsec vpn vpn-id98 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id98 bind-interface st0.98
set interfaces st0.99 family inet address 10.255.99.1/30
set security zones security-zone vpn interfaces st0.99
set protocols ospf area 0 interface st0.99
set security ike gateway vpngw-id99 address 10.10.0.1
set security ike gateway vpngw-id99 external-interface ge-0/0/1.0
set security ike gateway vpngw-id99 ike-policy ike-policy1
set security ipsec vpn vpn-id99 ike gateway vpngw-id99
set security ipsec vpn vpn-id99 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id99 bind-interface st0.99
set interfaces st0.100 family inet address 10.255.100.1/30
set security zones security-zone vpn interfaces st0.100
set protocols ospf area 0 interface st0.100
set security ike gateway vpngw-id100 address 10.10.0.1
set security ike gateway vpngw-id100 external-interface ge-0/0/1.0
set security ike gateway vpngw-id100 ike-policy ike-policy1
set security ipsec vpn vpn-id100 ike gateway vpngw-id100
set security ipsec vpn vpn-id100 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id100 bind-interface st0.100
set interfaces st0.101 family inet address 10.255.101.1/30
set security zones security-zone vpn interfaces st0.101
set protocols ospf area 0 interface st0.101
set security ike gateway vpngw-id101 address 10.10.0.1
set security ike gateway vpngw-id101 external-interface ge-0/0/1.0
set security ike gateway vpngw-id101 ike-policy ike-policy1
set security ipsec vpn vpn-id101 ike gateway vpngw-id101
set security ipsec vpn vpn-id101 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id101 bind-interface st0.101
set interfaces st0.102 family inet address 10.255.102.1/30
set security zones security-zone vpn interfaces st0.102
set protocols ospf area 0 interface st0.102
set security ike gateway vpngw-id102 address 10.10.0.1
set security ike gateway vpngw-id102 external-interface ge-0/0/1.0
set security ike gateway vpngw-id102 ike-policy ike-policy1
set security ipsec vpn vpn-id102 ike gateway vpngw-id102
set security ipsec vpn vpn-id102 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id102 bind-interface st0.102
set interfaces st0.103 family inet address 10.255.103.1/30
set security zones security-zone vpn interfaces st0.103
set protocols ospf area 0 interface st0.103
set security ike gateway vpngw-id103 address 10.10.0.1
set security ike gateway vpngw-id103 external-interface ge-0/0/1.0
set security ike gateway vpngw-id103 ike-policy ike-policy1
set security ipsec vpn vpn-id103 ike gateway vpngw-id103
set security ipsec vpn vpn-id103 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id103 bind-interface st0.103
set interfaces st0.104 family inet address 10.255.104.1/30
set security zones security-zone vpn interfaces st0.104
set protocols ospf area 0 interface st0.104
set security ike gateway vpngw-id104 address 10.10.0.1
set security ike gateway vpngw-id104 external-interface ge-0/0/1.0
set security ike gateway vpngw-id104 ike-policy ike-policy1
set security ipsec vpn vpn-id104 ike gateway vpngw-id104
set security ipsec vpn vpn-id104 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id104 bind-interface st0.104
set interfaces st0.105 family inet address 10.255.105.1/30
set security zones security-zone vpn interfaces st0.105
set protocols ospf area 0 interface st0.105
set security ike gateway vpngw-id105 address 10.10.0.1
set security ike gateway vpngw-id105 external-interface ge-0/0/1.0
set security ike gateway vpngw-id105 ike-policy ike-policy1
set security ipsec vpn vpn-id105 ike gateway vpngw-id105
set security ipsec vpn vpn-id105 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id105 bind-interface st0.105
set interfaces st0.106 family inet address 10.255.106.1/30
set security zones security-zone vpn interfaces st0.106
set protocols ospf area 0 interface st0.106
set security ike gateway vpngw-id106 address 10.10.0.1
set security ike gateway vpngw-id106 external-interface ge-0/0/1.0
set security ike gateway vpngw-id106 ike-policy ike-policy1
set security ipsec vpn vpn-id106 ike gateway vpngw-id106
set security ipsec vpn vpn-id106 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id106 bind-interface st0.106
set interfaces st0.107 family inet address 10.255.107.1/30
set security zones security-zone vpn interfaces st0.107
set protocols ospf area 0 interface st0.107
set security ike gateway vpngw-id107 address 10.10.0.1
set security ike gateway vpngw-id107 external-interface ge-0/0/1.0
set security ike gateway vpngw-id107 ike-policy ike-policy1
set security ipsec vpn vpn-id107 ike gateway vpngw-id107
set security ipsec vpn vpn-id107 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id107 bind-interface st0.107
set interfaces st0.108 family inet address 10.255.108.1/30
set security zones security-zone vpn interfaces st0.108
set protocols ospf area 0 interface st0.108
set security ike gateway vpngw-id108 address 10.10.0.1
set security ike gateway vpngw-id108 external-interface ge-0/0/1.0
set security ike gateway vpngw-id108 ike-policy ike-policy1
set security ipsec vpn vpn-id108 ike gateway vpngw-id108
set security ipsec vpn vpn-id108 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id108 bind-interface st0.108
set interfaces st0.109 family inet address 10.255.109.1/30
set security zones security-zone vpn interfaces st0.109
set protocols ospf area 0 interface st0.109
set security ike gateway vpngw-id109 address 10.10.0.1
set security ike gateway vpngw-id109 external-interface ge-0/0/1.0
set security ike gateway vpngw-id109 ike-policy ike-policy1
set security ipsec vpn vpn-id109 ike gateway vpngw-id109
set security ipsec vpn vpn-id109 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id109 bind-interface st0.109
set interfaces st0.110 family inet address 10.255.110.1/30
set security zones security-zone vpn interfaces st0.110
set protocols ospf area 0 interface st0.110
set security ike gateway vpngw-id110 address 10.10.0.1
set security ike gateway vpngw-id110 external-interface ge-0/0/1.0
set security ike gateway vpngw-id110 ike-policy ike-policy1
set security ipsec vpn vpn-id110 ike gateway vpngw-id110
set security ipsec vpn vpn-id110 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id110 bind-interface st0.110
set interfaces st0.111 family inet address 10.255.111.1/30
set security zones security-zone vpn interfaces st0.111
set protocols ospf area 0 interface st0.111
set security ike gateway vpngw-id111 address 10.10.0.1
set security ike gateway vpngw-id111 external-interface ge-0/0/1.0
set security ike gateway vpngw-id111 ike-policy ike-policy1
set security ipsec vpn vpn-id111 ike gateway vpngw-id111
set security ipsec vpn vpn-id111 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id111 bind-interface st0.111
set interfaces st0.112 family inet address 10.255.112.1/30
set security zones security-zone vpn interfaces st0.112
set protocols ospf area 0 interface st0.112
set security ike gateway vpngw-id112 address 10.10.0.1
set security ike gateway vpngw-id112 external-interface ge-0/0/1.0
set security ike gateway vpngw-id112 ike-policy ike-policy1
set security ipsec vpn vpn-id112 ike gateway vpngw-id112
set security ipsec vpn vpn-id112 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id112 bind-interface st0.112
set interfaces st0.113 family inet address 10.255.113.1/30
set security zones security-zone vpn interfaces st0.113
set protocols ospf area 0 interface st0.113
set security ike gateway vpngw-id113 address 10.10.0.1
set security ike gateway vpngw-id113 external-interface ge-0/0/1.0
set security ike gateway vpngw-id113 ike-policy ike-policy1
set security ipsec vpn vpn-id113 ike gateway vpngw-id113
set security ipsec vpn vpn-id113 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id113 bind-interface st0.113
set interfaces st0.114 family inet address 10.255.114.1/30
set security zones security-zone vpn interfaces st0.114
set protocols ospf area 0 interface st0.114
set security ike gateway vpngw-id114 address 10.10.0.1
set security ike gateway vpngw-id114 external-interface ge-0/0/1.0
set security ike gateway vpngw-id114 ike-policy ike-policy1
set security ipsec vpn vpn-id114 ike gateway vpngw-id114
set security ipsec vpn vpn-id114 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id114 bind-interface st0.114
set interfaces st0.115 family inet address 10.255.115.1/30
set security zones security-zone vpn interfaces st0.115
set protocols ospf area 0 interface st0.115
set security ike gateway vpngw-id115 address 10.10.0.1
set security ike gateway vpngw-id115 external-interface ge-0/0/1.0
set security ike gateway vpngw-id115 ike-policy ike-policy1
set security ipsec vpn vpn-id115 ike gateway vpngw-id115
set security ipsec vpn vpn-id115 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id115 bind-interface st0.115
set interfaces st0.116 family inet address 10.255.116.1/30
set security zones security-zone vpn interfaces st0.116
set protocols ospf area 0 interface st0.116
set security ike gateway vpngw-id116 address 10.10.0.1
set security ike gateway vpngw-id116 external-interface ge-0/0/1.0
set security ike gateway vpngw-id116 ike-policy ike-policy1
set security ipsec vpn vpn-id116 ike gateway vpngw-id116
set security ipsec vpn vpn-id116 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id116 bind-interface st0.116
set interfaces st0.117 family inet address 10.255.117.1/30
set security zones security-zone vpn interfaces st0.117
set protocols ospf area 0 interface st0.117
set security ike gateway vpngw-id117 address 10.10.0.1
set security ike gateway vpngw-id117 external-interface ge-0/0/1.0
set security ike gateway vpngw-id117 ike-policy ike-policy1
set security ipsec vpn vpn-id117 ike gateway vpngw-id117
set security ipsec vpn vpn-id117 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id117 bind-interface st0.117
set interfaces st0.118 family inet address 10.255.118.1/30
set security zones security-zone vpn interfaces st0.118
set protocols ospf area 0 interface st0.118
set security ike gateway vpngw-id118 address 10.10.0.1
set security ike gateway vpngw-id118 external-interface ge-0/0/1.0
set security ike gateway vpngw-id118 ike-policy ike-policy1
set security ipsec vpn vpn-id118 ike gateway vpngw-id118
set security ipsec vpn vpn-id118 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id118 bind-interface st0.118
set interfaces st0.119 family inet address 10.255.119.1/30
set security zones security-zone vpn interfaces st0.119
set protocols ospf area 0 interface st0.119
set security ike gateway vpngw-id119 address 10.10.0.1
set security ike gateway vpngw-id119 external-interface ge-0/0/1.0
set security ike gateway vpngw-id119 ike-policy ike-policy1
set security ipsec vpn vpn-id119 ike gateway vpngw-id119
set security ipsec vpn vpn-id119 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id119 bind-interface st0.119
set interfaces st0.120 family inet address 10.255.120.1/30
set security zones security-zone vpn interfaces st0.120
set protocols ospf area 0 interface st0.120
set security ike gateway vpngw-id120 address 10.10.0.1
set security ike gateway vpngw-id120 external-interface ge-0/0/1.0
set security ike gateway vpngw-id120 ike-policy ike-policy1
set security ipsec vpn vpn-id120 ike gateway vpngw-id120
set security ipsec vpn vpn-id120 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id120 bind-interface st0.120
set interfaces st0.121 family inet address 10.255.121.1/30
set security zones security-zone vpn interfaces st0.121
set protocols ospf area 0 interface st0.121
set security ike gateway vpngw-id121 address 10.10.0.1
set security ike gateway vpngw-id121 external-interface ge-0/0/1.0
set security ike gateway vpngw-id121 ike-policy ike-policy1
set security ipsec vpn vpn-id121 ike gateway vpngw-id121
set security ipsec vpn vpn-id121 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id121 bind-interface st0.121
set interfaces st0.122 family inet address 10.255.122.1/30
set security zones security-zone vpn interfaces st0.122
set protocols ospf area 0 interface st0.122
set security ike gateway vpngw-id122 address 10.10.0.1
set security ike gateway vpngw-id122 external-interface ge-0/0/1.0
set security ike gateway vpngw-id122 ike-policy ike-policy1
set security ipsec vpn vpn-id122 ike gateway vpngw-id122
set security ipsec vpn vpn-id122 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id122 bind-interface st0.122
set interfaces st0.123 family inet address 10.255.123.1/30
set security zones security-zone vpn interfaces st0.123
set protocols ospf area 0 interface st0.123
set security ike gateway vpngw-id123 address 10.10.0.1
set security ike gateway vpngw-id123 external-interface ge-0/0/1.0
set security ike gateway vpngw-id123 ike-policy ike-policy1
set security ipsec vpn vpn-id123 ike gateway vpngw-id123
set security ipsec vpn vpn-id123 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id123 bind-interface st0.123
set interfaces st0.124 family inet address 10.255.124.1/30
set security zones security-zone vpn interfaces st0.124
set protocols ospf area 0 interface st0.124
set security ike gateway vpngw-id124 address 10.10.0.1
set security ike gateway vpngw-id124 external-interface ge-0/0/1.0
set security ike gateway vpngw-id124 ike-policy ike-policy1
set security ipsec vpn vpn-id124 ike gateway vpngw-id124
set security ipsec vpn vpn-id124 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id124 bind-interface st0.124
set interfaces st0.125 family inet address 10.255.125.1/30
set security zones security-zone vpn interfaces st0.125
set protocols ospf area 0 interface st0.125
set security ike gateway vpngw-id125 address 10.10.0.1
set security ike gateway vpngw-id125 external-interface ge-0/0/1.0
set security ike gateway vpngw-id125 ike-policy ike-policy1
set security ipsec vpn vpn-id125 ike gateway vpngw-id125
set security ipsec vpn vpn-id125 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id125 bind-interface st0.125
set interfaces st0.126 family inet address 10.255.126.1/30
set security zones security-zone vpn interfaces st0.126
set protocols ospf area 0 interface st0.126
set security ike gateway vpngw-id126 address 10.10.0.1
set security ike gateway vpngw-id126 external-interface ge-0/0/1.0
set security ike gateway vpngw-id126 ike-policy ike-policy1
set security ipsec vpn vpn-id126 ike gateway vpngw-id126
set security ipsec vpn vpn-id126 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id126 bind-interface st0.126
set interfaces st0.127 family inet address 10.255.127.1/30
set security zones security-zone vpn interfaces st0.127
set protocols ospf area 0 interface st0.127
set security ike gateway vpngw-id127 address 10.10.0.1
set security ike gateway vpngw-id127 external-interface ge-0/0/1.0
set security ike gateway vpngw-id127 ike-policy ike-policy1
set security ipsec vpn vpn-id127 ike gateway vpngw-id127
set security ipsec vpn vpn-id127 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id127 bind-interface st0.127
set interfaces st0.128 family inet address 10.255.128.1/30
set security zones security-zone vpn interfaces st0.128
set protocols ospf area 0 interface st0.128
set security ike gateway vpngw-id128 address 10.10.0.1
set security ike gateway vpngw-id128 external-interface ge-0/0/1.0
set security ike gateway vpngw-id128 ike-policy ike-policy1
set security ipsec vpn vpn-id128 ike gateway vpngw-id128
set security ipsec vpn vpn-id128 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id128 bind-interface st0.128
set interfaces st0.129 family inet address 10.255.129.1/30
set security zones security-zone vpn interfaces st0.129
set protocols ospf area 0 interface st0.129
set security ike gateway vpngw-id129 address 10.10.0.1
set security ike gateway vpngw-id129 external-interface ge-0/0/1.0
set security ike gateway vpngw-id129 ike-policy ike-policy1
set security ipsec vpn vpn-id129 ike gateway vpngw-id129
set security ipsec vpn vpn-id129 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id129 bind-interface st0.129
set interfaces st0.130 family inet address 10.255.130.1/30
set security zones security-zone vpn interfaces st0.130
set protocols ospf area 0 interface st0.130
set security ike gateway vpngw-id130 address 10.10.0.1
set security ike gateway vpngw-id130 external-interface ge-0/0/1.0
set security ike gateway vpngw-id130 ike-policy ike-policy1
set security ipsec vpn vpn-id130 ike gateway vpngw-id130
set security ipsec vpn vpn-id130 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id130 bind-interface st0.130
set interfaces st0.131 family inet address 10.255.131.1/30
set security zones security-zone vpn interfaces st0.131
set protocols ospf area 0 interface st0.131
set security ike gateway vpngw-id131 address 10.10.0.1
set security ike gateway vpngw-id131 external-interface ge-0/0/1.0
set security ike gateway vpngw-id131 ike-policy ike-policy1
set security ipsec vpn vpn-id131 ike gateway vpngw-id131
set security ipsec vpn vpn-id131 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id131 bind-interface st0.131
set interfaces st0.132 family inet address 10.255.132.1/30
set security zones security-zone vpn interfaces st0.132
set protocols ospf area 0 interface st0.132
set security ike gateway vpngw-id132 address 10.10.0.1
set security ike gateway vpngw-id132 external-interface ge-0/0/1.0
set security ike gateway vpngw-id132 ike-policy ike-policy1
set security ipsec vpn vpn-id132 ike gateway vpngw-id132
set security ipsec vpn vpn-id132 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id132 bind-interface st0.132
set interfaces st0.133 family inet address 10.255.133.1/30
set security zones security-zone vpn interfaces st0.133
set protocols ospf area 0 interface st0.133
set security ike gateway vpngw-id133 address 10.10.0.1
set security ike gateway vpngw-id133 external-interface ge-0/0/1.0
set security ike gateway vpngw-id133 ike-policy ike-policy1
set security ipsec vpn vpn-id133 ike gateway vpngw-id133
set security ipsec vpn vpn-id133 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id133 bind-interface st0.133
set interfaces st0.134 family inet address 10.255.134.1/30
set security zones security-zone vpn interfaces st0.134
set protocols ospf area 0 interface st0.134
set security ike gateway vpngw-id134 address 10.10.0.1
set security ike gateway vpngw-id134 external-interface ge-0/0/1.0
set security ike gateway vpngw-id134 ike-policy ike-policy1
set security ipsec vpn vpn-id134 ike gateway vpngw-id134
set security ipsec vpn vpn-id134 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id134 bind-interface st0.134
set interfaces st0.135 family inet address 10.255.135.1/30
set security zones security-zone vpn interfaces st0.135
set protocols ospf area 0 interface st0.135
set security ike gateway vpngw-id135 address 10.10.0.1
set security ike gateway vpngw-id135 external-interface ge-0/0/1.0
set security ike gateway vpngw-id135 ike-policy ike-policy1
set security ipsec vpn vpn-id135 ike gateway vpngw-id135
set security ipsec vpn vpn-id135 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id135 bind-interface st0.135
set interfaces st0.136 family inet address 10.255.136.1/30
set security zones security-zone vpn interfaces st0.136
set protocols ospf area 0 interface st0.136
set security ike gateway vpngw-id136 address 10.10.0.1
set security ike gateway vpngw-id136 external-interface ge-0/0/1.0
set security ike gateway vpngw-id136 ike-policy ike-policy1
set security ipsec vpn vpn-id136 ike gateway vpngw-id136
set security ipsec vpn vpn-id136 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id136 bind-interface st0.136
set interfaces st0.137 family inet address 10.255.137.1/30
set security zones security-zone vpn interfaces st0.137
set protocols ospf area 0 interface st0.137
set security ike gateway vpngw-id137 address 10.10.0.1
set security ike gateway vpngw-id137 external-interface ge-0/0/1.0
set security ike gateway vpngw-id137 ike-policy ike-policy1
set security ipsec vpn vpn-id137 ike gateway vpngw-id137
set security ipsec vpn vpn-id137 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id137 bind-interface st0.137
set interfaces st0.138 family inet address 10.255.138.1/30
set security zones security-zone vpn interfaces st0.138
set protocols ospf area 0 interface st0.138
set security ike gateway vpngw-id138 address 10.10.0.1
set security ike gateway vpngw-id138 external-interface ge-0/0/1.0
set security ike gateway vpngw-id138 ike-policy ike-policy1
set security ipsec vpn vpn-id138 ike gateway vpngw-id138
set security ipsec vpn vpn-id138 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id138 bind-interface st0.138
set interfaces st0.139 family inet address 10.255.139.1/30
set security zones security-zone vpn interfaces st0.139
set protocols ospf area 0 interface st0.139
set security ike gateway vpngw-id139 address 10.10.0.1
set security ike gateway vpngw-id139 external-interface ge-0/0/1.0
set security ike gateway vpngw-id139 ike-policy ike-policy1
set security ipsec vpn vpn-id139 ike gateway vpngw-id139
set security ipsec vpn vpn-id139 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id139 bind-interface st0.139
set interfaces st0.140 family inet address 10.255.140.1/30
set security zones security-zone vpn interfaces st0.140
set protocols ospf area 0 interface st0.140
set security ike gateway vpngw-id140 address 10.10.0.1
set security ike gateway vpngw-id140 external-interface ge-0/0/1.0
set security ike gateway vpngw-id140 ike-policy ike-policy1
set security ipsec vpn vpn-id140 ike gateway vpngw-id140
set security ipsec vpn vpn-id140 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id140 bind-interface st0.140
set interfaces st0.141 family inet address 10.255.141.1/30
set security zones security-zone vpn interfaces st0.141
set protocols ospf area 0 interface st0.141
set security ike gateway vpngw-id141 address 10.10.0.1
set security ike gateway vpngw-id141 external-interface ge-0/0/1.0
set security ike gateway vpngw-id141 ike-policy ike-policy1
set security ipsec vpn vpn-id141 ike gateway vpngw-id141
set security ipsec vpn vpn-id141 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id141 bind-interface st0.141
set interfaces st0.142 family inet address 10.255.142.1/30
set security zones security-zone vpn interfaces st0.142
set protocols ospf area 0 interface st0.142
set security ike gateway vpngw-id142 address 10.10.0.1
set security ike gateway vpngw-id142 external-interface ge-0/0/1.0
set security ike gateway vpngw-id142 ike-policy ike-policy1
set security ipsec vpn vpn-id142 ike gateway vpngw-id142
set security ipsec vpn vpn-id142 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id142 bind-interface st0.142
set interfaces st0.143 family inet address 10.255.143.1/30
set security zones security-zone vpn interfaces st0.143
set protocols ospf area 0 interface st0.143
set security ike gateway vpngw-id143 address 10.10.0.1
set security ike gateway vpngw-id143 external-interface ge-0/0/1.0
set security ike gateway vpngw-id143 ike-policy ike-policy1
set security ipsec vpn vpn-id143 ike gateway vpngw-id143
set security ipsec vpn vpn-id143 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id143 bind-interface st0.143
set interfaces st0.144 family inet address 10.255.144.1/30
set security zones security-zone vpn interfaces st0.144
set protocols ospf area 0 interface st0.144
set security ike gateway vpngw-id144 address 10.10.0.1
set security ike gateway vpngw-id144 external-interface ge-0/0/1.0
set security ike gateway vpngw-id144 ike-policy ike-policy1
set security ipsec vpn vpn-id144 ike gateway vpngw-id144
set security ipsec vpn vpn-id144 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id144 bind-interface st0.144
set interfaces st0.145 family inet address 10.255.145.1/30
set security zones security-zone vpn interfaces st0.145
set protocols ospf area 0 interface st0.145
set security ike gateway vpngw-id145 address 10.10.0.1
set security ike gateway vpngw-id145 external-interface ge-0/0/1.0
set security ike gateway vpngw-id145 ike-policy ike-policy1
set security ipsec vpn vpn-id145 ike gateway vpngw-id145
set security ipsec vpn vpn-id145 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id145 bind-interface st0.145
set interfaces st0.146 family inet address 10.255.146.1/30
set security zones security-zone vpn interfaces st0.146
set protocols ospf area 0 interface st0.146
set security ike gateway vpngw-id146 address 10.10.0.1
set security ike gateway vpngw-id146 external-interface ge-0/0/1.0
set security ike gateway vpngw-id146 ike-policy ike-policy1
set security ipsec vpn vpn-id146 ike gateway vpngw-id146
set security ipsec vpn vpn-id146 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id146 bind-interface st0.146
set interfaces st0.147 family inet address 10.255.147.1/30
set security zones security-zone vpn interfaces st0.147
set protocols ospf area 0 interface st0.147
set security ike gateway vpngw-id147 address 10.10.0.1
set security ike gateway vpngw-id147 external-interface ge-0/0/1.0
set security ike gateway vpngw-id147 ike-policy ike-policy1
set security ipsec vpn vpn-id147 ike gateway vpngw-id147
set security ipsec vpn vpn-id147 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id147 bind-interface st0.147
set interfaces st0.148 family inet address 10.255.148.1/30
set security zones security-zone vpn interfaces st0.148
set protocols ospf area 0 interface st0.148
set security ike gateway vpngw-id148 address 10.10.0.1
set security ike gateway vpngw-id148 external-interface ge-0/0/1.0
set security ike gateway vpngw-id148 ike-policy ike-policy1
set security ipsec vpn vpn-id148 ike gateway vpngw-id148
set security ipsec vpn vpn-id148 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id148 bind-interface st0.148
set interfaces st0.149 family inet address 10.255.149.1/30
set security zones security-zone vpn interfaces st0.149
set protocols ospf area 0 interface st0.149
set security ike gateway vpngw-id149 address 10.10.0.1
set security ike gateway vpngw-id149 external-interface ge-0/0/1.0
set security ike gateway vpngw-id149 ike-policy ike-policy1
set security ipsec vpn vpn-id149 ike gateway vpngw-id149
set security ipsec vpn vpn-id149 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id149 bind-interface st0.149
set interfaces st0.150 family inet address 10.255.150.1/30
set security zones security-zone vpn interfaces st0.150
set protocols ospf area 0 interface st0.150
set security ike gateway vpngw-id150 address 10.10.0.1
set security ike gateway vpngw-id150 external-interface ge-0/0/1.0
set security ike gateway vpngw-id150 ike-policy ike-policy1
set security ipsec vpn vpn-id150 ike gateway vpngw-id150
set security ipsec vpn vpn-id150 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id150 bind-interface st0.150
set interfaces st0.151 family inet address 10.255.151.1/30
set security zones security-zone vpn interfaces st0.151
set protocols ospf area 0 interface st0.151
set security ike gateway vpngw-id151 address 10.10.0.1
set security ike gateway vpngw-id151 external-interface ge-0/0/1.0
set security ike gateway vpngw-id151 ike-policy ike-policy1
set security ipsec vpn vpn-id151 ike gateway vpngw-id151
set security ipsec vpn vpn-id151 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id151 bind-interface st0.151
set interfaces st0.152 family inet address 10.255.152.1/30
set security zones security-zone vpn interfaces st0.152
set protocols ospf area 0 interface st0.152
set security ike gateway vpngw-id152 address 10.10.0.1
set security ike gateway vpngw-id152 external-interface ge-0/0/1.0
set security ike gateway vpngw-id152 ike-policy ike-policy1
set security ipsec vpn vpn-id152 ike gateway vpngw-id152
set security ipsec vpn vpn-id152 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id152 bind-interface st0.152
set interfaces st0.153 family inet address 10.255.153.1/30
set security zones security-zone vpn interfaces st0.153
set protocols ospf area 0 interface st0.153
set security ike gateway vpngw-id153 address 10.10.0.1
set security ike gateway vpngw-id153 external-interface ge-0/0/1.0
set security ike gateway vpngw-id153 ike-policy ike-policy1
set security ipsec vpn vpn-id153 ike gateway vpngw-id153
set security ipsec vpn vpn-id153 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id153 bind-interface st0.153
set interfaces st0.154 family inet address 10.255.154.1/30
set security zones security-zone vpn interfaces st0.154
set protocols ospf area 0 interface st0.154
set security ike gateway vpngw-id154 address 10.10.0.1
set security ike gateway vpngw-id154 external-interface ge-0/0/1.0
set security ike gateway vpngw-id154 ike-policy ike-policy1
set security ipsec vpn vpn-id154 ike gateway vpngw-id154
set security ipsec vpn vpn-id154 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id154 bind-interface st0.154
set interfaces st0.155 family inet address 10.255.155.1/30
set security zones security-zone vpn interfaces st0.155
set protocols ospf area 0 interface st0.155
set security ike gateway vpngw-id155 address 10.10.0.1
set security ike gateway vpngw-id155 external-interface ge-0/0/1.0
set security ike gateway vpngw-id155 ike-policy ike-policy1
set security ipsec vpn vpn-id155 ike gateway vpngw-id155
set security ipsec vpn vpn-id155 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id155 bind-interface st0.155
set interfaces st0.156 family inet address 10.255.156.1/30
set security zones security-zone vpn interfaces st0.156
set protocols ospf area 0 interface st0.156
set security ike gateway vpngw-id156 address 10.10.0.1
set security ike gateway vpngw-id156 external-interface ge-0/0/1.0
set security ike gateway vpngw-id156 ike-policy ike-policy1
set security ipsec vpn vpn-id156 ike gateway vpngw-id156
set security ipsec vpn vpn-id156 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id156 bind-interface st0.156
set interfaces st0.157 family inet address 10.255.157.1/30
set security zones security-zone vpn interfaces st0.157
set protocols ospf area 0 interface st0.157
set security ike gateway vpngw-id157 address 10.10.0.1
set security ike gateway vpngw-id157 external-interface ge-0/0/1.0
set security ike gateway vpngw-id157 ike-policy ike-policy1
set security ipsec vpn vpn-id157 ike gateway vpngw-id157
set security ipsec vpn vpn-id157 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id157 bind-interface st0.157
set interfaces st0.158 family inet address 10.255.158.1/30
set security zones security-zone vpn interfaces st0.158
set protocols ospf area 0 interface st0.158
set security ike gateway vpngw-id158 address 10.10.0.1
set security ike gateway vpngw-id158 external-interface ge-0/0/1.0
set security ike gateway vpngw-id158 ike-policy ike-policy1
set security ipsec vpn vpn-id158 ike gateway vpngw-id158
set security ipsec vpn vpn-id158 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id158 bind-interface st0.158
set interfaces st0.159 family inet address 10.255.159.1/30
set security zones security-zone vpn interfaces st0.159
set protocols ospf area 0 interface st0.159
set security ike gateway vpngw-id159 address 10.10.0.1
set security ike gateway vpngw-id159 external-interface ge-0/0/1.0
set security ike gateway vpngw-id159 ike-policy ike-policy1
set security ipsec vpn vpn-id159 ike gateway vpngw-id159
set security ipsec vpn vpn-id159 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id159 bind-interface st0.159
set interfaces st0.160 family inet address 10.255.160.1/30
set security zones security-zone vpn interfaces st0.160
set protocols ospf area 0 interface st0.160
set security ike gateway vpngw-id160 address 10.10.0.1
set security ike gateway vpngw-id160 external-interface ge-0/0/1.0
set security ike gateway vpngw-id160 ike-policy ike-policy1
set security ipsec vpn vpn-id160 ike gateway vpngw-id160
set security ipsec vpn vpn-id160 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id160 bind-interface st0.160
set interfaces st0.161 family inet address 10.255.161.1/30
set security zones security-zone vpn interfaces st0.161
set protocols ospf area 0 interface st0.161
set security ike gateway vpngw-id161 address 10.10.0.1
set security ike gateway vpngw-id161 external-interface ge-0/0/1.0
set security ike gateway vpngw-id161 ike-policy ike-policy1
set security ipsec vpn vpn-id161 ike gateway vpngw-id161
set security ipsec vpn vpn-id161 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id161 bind-interface st0.161
set interfaces st0.162 family inet address 10.255.162.1/30
set security zones security-zone vpn interfaces st0.162
set protocols ospf area 0 interface st0.162
set security ike gateway vpngw-id162 address 10.10.0.1
set security ike gateway vpngw-id162 external-interface ge-0/0/1.0
set security ike gateway vpngw-id162 ike-policy ike-policy1
set security ipsec vpn vpn-id162 ike gateway vpngw-id162
set security ipsec vpn vpn-id162 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id162 bind-interface st0.162
set interfaces st0.163 family inet address 10.255.163.1/30
set security zones security-zone vpn interfaces st0.163
set protocols ospf area 0 interface st0.163
set security ike gateway vpngw-id163 address 10.10.0.1
set security ike gateway vpngw-id163 external-interface ge-0/0/1.0
set security ike gateway vpngw-id163 ike-policy ike-policy1
set security ipsec vpn vpn-id163 ike gateway vpngw-id163
set security ipsec vpn vpn-id163 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id163 bind-interface st0.163
set interfaces st0.164 family inet address 10.255.164.1/30
set security zones security-zone vpn interfaces st0.164
set protocols ospf area 0 interface st0.164
set security ike gateway vpngw-id164 address 10.10.0.1
set security ike gateway vpngw-id164 external-interface ge-0/0/1.0
set security ike gateway vpngw-id164 ike-policy ike-policy1
set security ipsec vpn vpn-id164 ike gateway vpngw-id164
set security ipsec vpn vpn-id164 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id164 bind-interface st0.164
set interfaces st0.165 family inet address 10.255.165.1/30
set security zones security-zone vpn interfaces st0.165
set protocols ospf area 0 interface st0.165
set security ike gateway vpngw-id165 address 10.10.0.1
set security ike gateway vpngw-id165 external-interface ge-0/0/1.0
set security ike gateway vpngw-id165 ike-policy ike-policy1
set security ipsec vpn vpn-id165 ike gateway vpngw-id165
set security ipsec vpn vpn-id165 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id165 bind-interface st0.165
set interfaces st0.166 family inet address 10.255.166.1/30
set security zones security-zone vpn interfaces st0.166
set protocols ospf area 0 interface st0.166
set security ike gateway vpngw-id166 address 10.10.0.1
set security ike gateway vpngw-id166 external-interface ge-0/0/1.0
set security ike gateway vpngw-id166 ike-policy ike-policy1
set security ipsec vpn vpn-id166 ike gateway vpngw-id166
set security ipsec vpn vpn-id166 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id166 bind-interface st0.166
set interfaces st0.167 family inet address 10.255.167.1/30
set security zones security-zone vpn interfaces st0.167
set protocols ospf area 0 interface st0.167
set security ike gateway vpngw-id167 address 10.10.0.1
set security ike gateway vpngw-id167 external-interface ge-0/0/1.0
set security ike gateway vpngw-id167 ike-policy ike-policy1
set security ipsec vpn vpn-id167 ike gateway vpngw-id167
set security ipsec vpn vpn-id167 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id167 bind-interface st0.167
set interfaces st0.168 family inet address 10.255.168.1/30
set security zones security-zone vpn interfaces st0.168
set protocols ospf area 0 interface st0.168
set security ike gateway vpngw-id168 address 10.10.0.1
set security ike gateway vpngw-id168 external-interface ge-0/0/1.0
set security ike gateway vpngw-id168 ike-policy ike-policy1
set security ipsec vpn vpn-id168 ike gateway vpngw-id168
set security ipsec vpn vpn-id168 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id168 bind-interface st0.168
set interfaces st0.169 family inet address 10.255.169.1/30
set security zones security-zone vpn interfaces st0.169
set protocols ospf area 0 interface st0.169
set security ike gateway vpngw-id169 address 10.10.0.1
set security ike gateway vpngw-id169 external-interface ge-0/0/1.0
set security ike gateway vpngw-id169 ike-policy ike-policy1
set security ipsec vpn vpn-id169 ike gateway vpngw-id169
set security ipsec vpn vpn-id169 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id169 bind-interface st0.169
set interfaces st0.170 family inet address 10.255.170.1/30
set security zones security-zone vpn interfaces st0.170
set protocols ospf area 0 interface st0.170
set security ike gateway vpngw-id170 address 10.10.0.1
set security ike gateway vpngw-id170 external-interface ge-0/0/1.0
set security ike gateway vpngw-id170 ike-policy ike-policy1
set security ipsec vpn vpn-id170 ike gateway vpngw-id170
set security ipsec vpn vpn-id170 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id170 bind-interface st0.170
set interfaces st0.171 family inet address 10.255.171.1/30
set security zones security-zone vpn interfaces st0.171
set protocols ospf area 0 interface st0.171
set security ike gateway vpngw-id171 address 10.10.0.1
set security ike gateway vpngw-id171 external-interface ge-0/0/1.0
set security ike gateway vpngw-id171 ike-policy ike-policy1
set security ipsec vpn vpn-id171 ike gateway vpngw-id171
set security ipsec vpn vpn-id171 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id171 bind-interface st0.171
set interfaces st0.172 family inet address 10.255.172.1/30
set security zones security-zone vpn interfaces st0.172
set protocols ospf area 0 interface st0.172
set security ike gateway vpngw-id172 address 10.10.0.1
set security ike gateway vpngw-id172 external-interface ge-0/0/1.0
set security ike gateway vpngw-id172 ike-policy ike-policy1
set security ipsec vpn vpn-id172 ike gateway vpngw-id172
set security ipsec vpn vpn-id172 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id172 bind-interface st0.172
set interfaces st0.173 family inet address 10.255.173.1/30
set security zones security-zone vpn interfaces st0.173
set protocols ospf area 0 interface st0.173
set security ike gateway vpngw-id173 address 10.10.0.1
set security ike gateway vpngw-id173 external-interface ge-0/0/1.0
set security ike gateway vpngw-id173 ike-policy ike-policy1
set security ipsec vpn vpn-id173 ike gateway vpngw-id173
set security ipsec vpn vpn-id173 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id173 bind-interface st0.173
set interfaces st0.174 family inet address 10.255.174.1/30
set security zones security-zone vpn interfaces st0.174
set protocols ospf area 0 interface st0.174
set security ike gateway vpngw-id174 address 10.10.0.1
set security ike gateway vpngw-id174 external-interface ge-0/0/1.0
set security ike gateway vpngw-id174 ike-policy ike-policy1
set security ipsec vpn vpn-id174 ike gateway vpngw-id174
set security ipsec vpn vpn-id174 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id174 bind-interface st0.174
set interfaces st0.175 family inet address 10.255.175.1/30
set security zones security-zone vpn interfaces st0.175
set protocols ospf area 0 interface st0.175
set security ike gateway vpngw-id175 address 10.10.0.1
set security ike gateway vpngw-id175 external-interface ge-0/0/1.0
set security ike gateway vpngw-id175 ike-policy ike-policy1
set security ipsec vpn vpn-id175 ike gateway vpngw-id175
set security ipsec vpn vpn-id175 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id175 bind-interface st0.175
set interfaces st0.176 family inet address 10.255.176.1/30
set security zones security-zone vpn interfaces st0.176
set protocols ospf area 0 interface st0.176
set security ike gateway vpngw-id176 address 10.10.0.1
set security ike gateway vpngw-id176 external-interface ge-0/0/1.0
set security ike gateway vpngw-id176 ike-policy ike-policy1
set security ipsec vpn vpn-id176 ike gateway vpngw-id176
set security ipsec vpn vpn-id176 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id176 bind-interface st0.176
set interfaces st0.177 family inet address 10.255.177.1/30
set security zones security-zone vpn interfaces st0.177
set protocols ospf area 0 interface st0.177
set security ike gateway vpngw-id177 address 10.10.0.1
set security ike gateway vpngw-id177 external-interface ge-0/0/1.0
set security ike gateway vpngw-id177 ike-policy ike-policy1
set security ipsec vpn vpn-id177 ike gateway vpngw-id177
set security ipsec vpn vpn-id177 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id177 bind-interface st0.177
set interfaces st0.178 family inet address 10.255.178.1/30
set security zones security-zone vpn interfaces st0.178
set protocols ospf area 0 interface st0.178
set security ike gateway vpngw-id178 address 10.10.0.1
set security ike gateway vpngw-id178 external-interface ge-0/0/1.0
set security ike gateway vpngw-id178 ike-policy ike-policy1
set security ipsec vpn vpn-id178 ike gateway vpngw-id178
set security ipsec vpn vpn-id178 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id178 bind-interface st0.178
set interfaces st0.179 family inet address 10.255.179.1/30
set security zones security-zone vpn interfaces st0.179
set protocols ospf area 0 interface st0.179
set security ike gateway vpngw-id179 address 10.10.0.1
set security ike gateway vpngw-id179 external-interface ge-0/0/1.0
set security ike gateway vpngw-id179 ike-policy ike-policy1
set security ipsec vpn vpn-id179 ike gateway vpngw-id179
set security ipsec vpn vpn-id179 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id179 bind-interface st0.179
set interfaces st0.180 family inet address 10.255.180.1/30
set security zones security-zone vpn interfaces st0.180
set protocols ospf area 0 interface st0.180
set security ike gateway vpngw-id180 address 10.10.0.1
set security ike gateway vpngw-id180 external-interface ge-0/0/1.0
set security ike gateway vpngw-id180 ike-policy ike-policy1
set security ipsec vpn vpn-id180 ike gateway vpngw-id180
set security ipsec vpn vpn-id180 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id180 bind-interface st0.180
set interfaces st0.181 family inet address 10.255.181.1/30
set security zones security-zone vpn interfaces st0.181
set protocols ospf area 0 interface st0.181
set security ike gateway vpngw-id181 address 10.10.0.1
set security ike gateway vpngw-id181 external-interface ge-0/0/1.0
set security ike gateway vpngw-id181 ike-policy ike-policy1
set security ipsec vpn vpn-id181 ike gateway vpngw-id181
set security ipsec vpn vpn-id181 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id181 bind-interface st0.181
set interfaces st0.182 family inet address 10.255.182.1/30
set security zones security-zone vpn interfaces st0.182
set protocols ospf area 0 interface st0.182
set security ike gateway vpngw-id182 address 10.10.0.1
set security ike gateway vpngw-id182 external-interface ge-0/0/1.0
set security ike gateway vpngw-id182 ike-policy ike-policy1
set security ipsec vpn vpn-id182 ike gateway vpngw-id182
set security ipsec vpn vpn-id182 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id182 bind-interface st0.182
set interfaces st0.183 family inet address 10.255.183.1/30
set security zones security-zone vpn interfaces st0.183
set protocols ospf area 0 interface st0.183
set security ike gateway vpngw-id183 address 10.10.0.1
set security ike gateway vpngw-id183 external-interface ge-0/0/1.0
set security ike gateway vpngw-id183 ike-policy ike-policy1
set security ipsec vpn vpn-id183 ike gateway vpngw-id183
set security ipsec vpn vpn-id183 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id183 bind-interface st0.183
set interfaces st0.184 family inet address 10.255.184.1/30
set security zones security-zone vpn interfaces st0.184
set protocols ospf area 0 interface st0.184
set security ike gateway vpngw-id184 address 10.10.0.1
set security ike gateway vpngw-id184 external-interface ge-0/0/1.0
set security ike gateway vpngw-id184 ike-policy ike-policy1
set security ipsec vpn vpn-id184 ike gateway vpngw-id184
set security ipsec vpn vpn-id184 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id184 bind-interface st0.184
set interfaces st0.185 family inet address 10.255.185.1/30
set security zones security-zone vpn interfaces st0.185
set protocols ospf area 0 interface st0.185
set security ike gateway vpngw-id185 address 10.10.0.1
set security ike gateway vpngw-id185 external-interface ge-0/0/1.0
set security ike gateway vpngw-id185 ike-policy ike-policy1
set security ipsec vpn vpn-id185 ike gateway vpngw-id185
set security ipsec vpn vpn-id185 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id185 bind-interface st0.185
set interfaces st0.186 family inet address 10.255.186.1/30
set security zones security-zone vpn interfaces st0.186
set protocols ospf area 0 interface st0.186
set security ike gateway vpngw-id186 address 10.10.0.1
set security ike gateway vpngw-id186 external-interface ge-0/0/1.0
set security ike gateway vpngw-id186 ike-policy ike-policy1
set security ipsec vpn vpn-id186 ike gateway vpngw-id186
set security ipsec vpn vpn-id186 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id186 bind-interface st0.186
set interfaces st0.187 family inet address 10.255.187.1/30
set security zones security-zone vpn interfaces st0.187
set protocols ospf area 0 interface st0.187
set security ike gateway vpngw-id187 address 10.10.0.1
set security ike gateway vpngw-id187 external-interface ge-0/0/1.0
set security ike gateway vpngw-id187 ike-policy ike-policy1
set security ipsec vpn vpn-id187 ike gateway vpngw-id187
set security ipsec vpn vpn-id187 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id187 bind-interface st0.187
set interfaces st0.188 family inet address 10.255.188.1/30
set security zones security-zone vpn interfaces st0.188
set protocols ospf area 0 interface st0.188
set security ike gateway vpngw-id188 address 10.10.0.1
set security ike gateway vpngw-id188 external-interface ge-0/0/1.0
set security ike gateway vpngw-id188 ike-policy ike-policy1
set security ipsec vpn vpn-id188 ike gateway vpngw-id188
set security ipsec vpn vpn-id188 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id188 bind-interface st0.188
set interfaces st0.189 family inet address 10.255.189.1/30
set security zones security-zone vpn interfaces st0.189
set protocols ospf area 0 interface st0.189
set security ike gateway vpngw-id189 address 10.10.0.1
set security ike gateway vpngw-id189 external-interface ge-0/0/1.0
set security ike gateway vpngw-id189 ike-policy ike-policy1
set security ipsec vpn vpn-id189 ike gateway vpngw-id189
set security ipsec vpn vpn-id189 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id189 bind-interface st0.189
set interfaces st0.190 family inet address 10.255.190.1/30
set security zones security-zone vpn interfaces st0.190
set protocols ospf area 0 interface st0.190
set security ike gateway vpngw-id190 address 10.10.0.1
set security ike gateway vpngw-id190 external-interface ge-0/0/1.0
set security ike gateway vpngw-id190 ike-policy ike-policy1
set security ipsec vpn vpn-id190 ike gateway vpngw-id190
set security ipsec vpn vpn-id190 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id190 bind-interface st0.190
set interfaces st0.191 family inet address 10.255.191.1/30
set security zones security-zone vpn interfaces st0.191
set protocols ospf area 0 interface st0.191
set security ike gateway vpngw-id191 address 10.10.0.1
set security ike gateway vpngw-id191 external-interface ge-0/0/1.0
set security ike gateway vpngw-id191 ike-policy ike-policy1
set security ipsec vpn vpn-id191 ike gateway vpngw-id191
set security ipsec vpn vpn-id191 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id191 bind-interface st0.191
set interfaces st0.192 family inet address 10.255.192.1/30
set security zones security-zone vpn interfaces st0.192
set protocols ospf area 0 interface st0.192
set security ike gateway vpngw-id192 address 10.10.0.1
set security ike gateway vpngw-id192 external-interface ge-0/0/1.0
set security ike gateway vpngw-id192 ike-policy ike-policy1
set security ipsec vpn vpn-id192 ike gateway vpngw-id192
set security ipsec vpn vpn-id192 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id192 bind-interface st0.192
set interfaces st0.193 family inet address 10.255.193.1/30
set security zones security-zone vpn interfaces st0.193
set protocols ospf area 0 interface st0.193
set security ike gateway vpngw-id193 address 10.10.0.1
set security ike gateway vpngw-id193 external-interface ge-0/0/1.0
set security ike gateway vpngw-id193 ike-policy ike-policy1
set security ipsec vpn vpn-id193 ike gateway vpngw-id193
set security ipsec vpn vpn-id193 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id193 bind-interface st0.193
set interfaces st0.194 family inet address 10.255.194.1/30
set security zones security-zone vpn interfaces st0.194
set protocols ospf area 0 interface st0.194
set security ike gateway vpngw-id194 address 10.10.0.1
set security ike gateway vpngw-id194 external-interface ge-0/0/1.0
set security ike gateway vpngw-id194 ike-policy ike-policy1
set security ipsec vpn vpn-id194 ike gateway vpngw-id194
set security ipsec vpn vpn-id194 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id194 bind-interface st0.194
set interfaces st0.195 family inet address 10.255.195.1/30
set security zones security-zone vpn interfaces st0.195
set protocols ospf area 0 interface st0.195
set security ike gateway vpngw-id195 address 10.10.0.1
set security ike gateway vpngw-id195 external-interface ge-0/0/1.0
set security ike gateway vpngw-id195 ike-policy ike-policy1
set security ipsec vpn vpn-id195 ike gateway vpngw-id195
set security ipsec vpn vpn-id195 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id195 bind-interface st0.195
set interfaces st0.196 family inet address 10.255.196.1/30
set security zones security-zone vpn interfaces st0.196
set protocols ospf area 0 interface st0.196
set security ike gateway vpngw-id196 address 10.10.0.1
set security ike gateway vpngw-id196 external-interface ge-0/0/1.0
set security ike gateway vpngw-id196 ike-policy ike-policy1
set security ipsec vpn vpn-id196 ike gateway vpngw-id196
set security ipsec vpn vpn-id196 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id196 bind-interface st0.196
set interfaces st0.197 family inet address 10.255.197.1/30
set security zones security-zone vpn interfaces st0.197
set protocols ospf area 0 interface st0.197
set security ike gateway vpngw-id197 address 10.10.0.1
set security ike gateway vpngw-id197 external-interface ge-0/0/1.0
set security ike gateway vpngw-id197 ike-policy ike-policy1
set security ipsec vpn vpn-id197 ike gateway vpngw-id197
set security ipsec vpn vpn-id197 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id197 bind-interface st0.197
set interfaces st0.198 family inet address 10.255.198.1/30
set security zones security-zone vpn interfaces st0.198
set protocols ospf area 0 interface st0.198
set security ike gateway vpngw-id198 address 10.10.0.1
set security ike gateway vpngw-id198 external-interface ge-0/0/1.0
set security ike gateway vpngw-id198 ike-policy ike-policy1
set security ipsec vpn vpn-id198 ike gateway vpngw-id198
set security ipsec vpn vpn-id198 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id198 bind-interface st0.198
set interfaces st0.199 family inet address 10.255.199.1/30
set security zones security-zone vpn interfaces st0.199
set protocols ospf area 0 interface st0.199
set security ike gateway vpngw-id199 address 10.10.0.1
set security ike gateway vpngw-id199 external-interface ge-0/0/1.0
set security ike gateway vpngw-id199 ike-policy ike-policy1
set security ipsec vpn vpn-id199 ike gateway vpngw-id199
set security ipsec vpn vpn-id199 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id199 bind-interface st0.199
set interfaces st0.200 family inet address 10.255.200.1/30
set security zones security-zone vpn interfaces st0.200
set protocols ospf area 0 interface st0.200
set security ike gateway vpngw-id200 address 10.10.0.1
set security ike gateway vpngw-id200 external-interface ge-0/0/1.0
set security ike gateway vpngw-id200 ike-policy ike-policy1
set security ipsec vpn vpn-id200 ike gateway vpngw-id200
set security ipsec vpn vpn-id200 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id200 bind-interface st0.200
set interfaces st0.201 family inet address 10.255.201.1/30
set security zones security-zone vpn interfaces st0.201
set protocols ospf area 0 interface st0.201
set security ike gateway vpngw-id201 address 10.10.0.1
set security ike gateway vpngw-id201 external-interface ge-0/0/1.0
set security ike gateway vpngw-id201 ike-policy ike-policy1
set security ipsec vpn vpn-id201 ike gateway vpngw-id201
set security ipsec vpn vpn-id201 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id201 bind-interface st0.201
set interfaces st0.202 family inet address 10.255.202.1/30
set security zones security-zone vpn interfaces st0.202
set protocols ospf area 0 interface st0.202
set security ike gateway vpngw-id202 address 10.10.0.1
set security ike gateway vpngw-id202 external-interface ge-0/0/1.0
set security ike gateway vpngw-id202 ike-policy ike-policy1
set security ipsec vpn vpn-id202 ike gateway vpngw-id202
set security ipsec vpn vpn-id202 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id202 bind-interface st0.202
set interfaces st0.203 family inet address 10.255.203.1/30
set security zones security-zone vpn interfaces st0.203
set protocols ospf area 0 interface st0.203
set security ike gateway vpngw-id203 address 10.10.0.1
set security ike gateway vpngw-id203 external-interface ge-0/0/1.0
set security ike gateway vpngw-id203 ike-policy ike-policy1
set security ipsec vpn vpn-id203 ike gateway vpngw-id203
set security ipsec vpn vpn-id203 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id203 bind-interface st0.203
set interfaces st0.204 family inet address 10.255.204.1/30
set security zones security-zone vpn interfaces st0.204
set protocols ospf area 0 interface st0.204
set security ike gateway vpngw-id204 address 10.10.0.1
set security ike gateway vpngw-id204 external-interface ge-0/0/1.0
set security ike gateway vpngw-id204 ike-policy ike-policy1
set security ipsec vpn vpn-id204 ike gateway vpngw-id204
set security ipsec vpn vpn-id204 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id204 bind-interface st0.204
set interfaces st0.205 family inet address 10.255.205.1/30
set security zones security-zone vpn interfaces st0.205
set protocols ospf area 0 interface st0.205
set security ike gateway vpngw-id205 address 10.10.0.1
set security ike gateway vpngw-id205 external-interface ge-0/0/1.0
set security ike gateway vpngw-id205 ike-policy ike-policy1
set security ipsec vpn vpn-id205 ike gateway vpngw-id205
set security ipsec vpn vpn-id205 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id205 bind-interface st0.205
set interfaces st0.206 family inet address 10.255.206.1/30
set security zones security-zone vpn interfaces st0.206
set protocols ospf area 0 interface st0.206
set security ike gateway vpngw-id206 address 10.10.0.1
set security ike gateway vpngw-id206 external-interface ge-0/0/1.0
set security ike gateway vpngw-id206 ike-policy ike-policy1
set security ipsec vpn vpn-id206 ike gateway vpngw-id206
set security ipsec vpn vpn-id206 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id206 bind-interface st0.206
set interfaces st0.207 family inet address 10.255.207.1/30
set security zones security-zone vpn interfaces st0.207
set protocols ospf area 0 interface st0.207
set security ike gateway vpngw-id207 address 10.10.0.1
set security ike gateway vpngw-id207 external-interface ge-0/0/1.0
set security ike gateway vpngw-id207 ike-policy ike-policy1
set security ipsec vpn vpn-id207 ike gateway vpngw-id207
set security ipsec vpn vpn-id207 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id207 bind-interface st0.207
set interfaces st0.208 family inet address 10.255.208.1/30
set security zones security-zone vpn interfaces st0.208
set protocols ospf area 0 interface st0.208
set security ike gateway vpngw-id208 address 10.10.0.1
set security ike gateway vpngw-id208 external-interface ge-0/0/1.0
set security ike gateway vpngw-id208 ike-policy ike-policy1
set security ipsec vpn vpn-id208 ike gateway vpngw-id208
set security ipsec vpn vpn-id208 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id208 bind-interface st0.208
set interfaces st0.209 family inet address 10.255.209.1/30
set security zones security-zone vpn interfaces st0.209
set protocols ospf area 0 interface st0.209
set security ike gateway vpngw-id209 address 10.10.0.1
set security ike gateway vpngw-id209 external-interface ge-0/0/1.0
set security ike gateway vpngw-id209 ike-policy ike-policy1
set security ipsec vpn vpn-id209 ike gateway vpngw-id209
set security ipsec vpn vpn-id209 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id209 bind-interface st0.209
set interfaces st0.210 family inet address 10.255.210.1/30
set security zones security-zone vpn interfaces st0.210
set protocols ospf area 0 interface st0.210
set security ike gateway vpngw-id210 address 10.10.0.1
set security ike gateway vpngw-id210 external-interface ge-0/0/1.0
set security ike gateway vpngw-id210 ike-policy ike-policy1
set security ipsec vpn vpn-id210 ike gateway vpngw-id210
set security ipsec vpn vpn-id210 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id210 bind-interface st0.210
set interfaces st0.211 family inet address 10.255.211.1/30
set security zones security-zone vpn interfaces st0.211
set protocols ospf area 0 interface st0.211
set security ike gateway vpngw-id211 address 10.10.0.1
set security ike gateway vpngw-id211 external-interface ge-0/0/1.0
set security ike gateway vpngw-id211 ike-policy ike-policy1
set security ipsec vpn vpn-id211 ike gateway vpngw-id211
set security ipsec vpn vpn-id211 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id211 bind-interface st0.211
set interfaces st0.212 family inet address 10.255.212.1/30
set security zones security-zone vpn interfaces st0.212
set protocols ospf area 0 interface st0.212
set security ike gateway vpngw-id212 address 10.10.0.1
set security ike gateway vpngw-id212 external-interface ge-0/0/1.0
set security ike gateway vpngw-id212 ike-policy ike-policy1
set security ipsec vpn vpn-id212 ike gateway vpngw-id212
set security ipsec vpn vpn-id212 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id212 bind-interface st0.212
set interfaces st0.213 family inet address 10.255.213.1/30
set security zones security-zone vpn interfaces st0.213
set protocols ospf area 0 interface st0.213
set security ike gateway vpngw-id213 address 10.10.0.1
set security ike gateway vpngw-id213 external-interface ge-0/0/1.0
set security ike gateway vpngw-id213 ike-policy ike-policy1
set security ipsec vpn vpn-id213 ike gateway vpngw-id213
set security ipsec vpn vpn-id213 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id213 bind-interface st0.213
set interfaces st0.214 family inet address 10.255.214.1/30
set security zones security-zone vpn interfaces st0.214
set protocols ospf area 0 interface st0.214
set security ike gateway vpngw-id214 address 10.10.0.1
set security ike gateway vpngw-id214 external-interface ge-0/0/1.0
set security ike gateway vpngw-id214 ike-policy ike-policy1
set security ipsec vpn vpn-id214 ike gateway vpngw-id214
set security ipsec vpn vpn-id214 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id214 bind-interface st0.214
set interfaces st0.215 family inet address 10.255.215.1/30
set security zones security-zone vpn interfaces st0.215
set protocols ospf area 0 interface st0.215
set security ike gateway vpngw-id215 address 10.10.0.1
set security ike gateway vpngw-id215 external-interface ge-0/0/1.0
set security ike gateway vpngw-id215 ike-policy ike-policy1
set security ipsec vpn vpn-id215 ike gateway vpngw-id215
set security ipsec vpn vpn-id215 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id215 bind-interface st0.215
set interfaces st0.216 family inet address 10.255.216.1/30
set security zones security-zone vpn interfaces st0.216
set protocols ospf area 0 interface st0.216
set security ike gateway vpngw-id216 address 10.10.0.1
set security ike gateway vpngw-id216 external-interface ge-0/0/1.0
set security ike gateway vpngw-id216 ike-policy ike-policy1
set security ipsec vpn vpn-id216 ike gateway vpngw-id216
set security ipsec vpn vpn-id216 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id216 bind-interface st0.216
set interfaces st0.217 family inet address 10.255.217.1/30
set security zones security-zone vpn interfaces st0.217
set protocols ospf area 0 interface st0.217
set security ike gateway vpngw-id217 address 10.10.0.1
set security ike gateway vpngw-id217 external-interface ge-0/0/1.0
set security ike gateway vpngw-id217 ike-policy ike-policy1
set security ipsec vpn vpn-id217 ike gateway vpngw-id217
set security ipsec vpn vpn-id217 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id217 bind-interface st0.217
set interfaces st0.218 family inet address 10.255.218.1/30
set security zones security-zone vpn interfaces st0.218
set protocols ospf area 0 interface st0.218
set security ike gateway vpngw-id218 address 10.10.0.1
set security ike gateway vpngw-id218 external-interface ge-0/0/1.0
set security ike gateway vpngw-id218 ike-policy ike-policy1
set security ipsec vpn vpn-id218 ike gateway vpngw-id218
set security ipsec vpn vpn-id218 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id218 bind-interface st0.218
set interfaces st0.219 family inet address 10.255.219.1/30
set security zones security-zone vpn interfaces st0.219
set protocols ospf area 0 interface st0.219
set security ike gateway vpngw-id219 address 10.10.0.1
set security ike gateway vpngw-id219 external-interface ge-0/0/1.0
set security ike gateway vpngw-id219 ike-policy ike-policy1
set security ipsec vpn vpn-id219 ike gateway vpngw-id219
set security ipsec vpn vpn-id219 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id219 bind-interface st0.219
set interfaces st0.220 family inet address 10.255.220.1/30
set security zones security-zone vpn interfaces st0.220
set protocols ospf area 0 interface st0.220
set security ike gateway vpngw-id220 address 10.10.0.1
set security ike gateway vpngw-id220 external-interface ge-0/0/1.0
set security ike gateway vpngw-id220 ike-policy ike-policy1
set security ipsec vpn vpn-id220 ike gateway vpngw-id220
set security ipsec vpn vpn-id220 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id220 bind-interface st0.220
set interfaces st0.221 family inet address 10.255.221.1/30
set security zones security-zone vpn interfaces st0.221
set protocols ospf area 0 interface st0.221
set security ike gateway vpngw-id221 address 10.10.0.1
set security ike gateway vpngw-id221 external-interface ge-0/0/1.0
set security ike gateway vpngw-id221 ike-policy ike-policy1
set security ipsec vpn vpn-id221 ike gateway vpngw-id221
set security ipsec vpn vpn-id221 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id221 bind-interface st0.221
set interfaces st0.222 family inet address 10.255.222.1/30
set security zones security-zone vpn interfaces st0.222
set protocols ospf area 0 interface st0.222
set security ike gateway vpngw-id222 address 10.10.0.1
set security ike gateway vpngw-id222 external-interface ge-0/0/1.0
set security ike gateway vpngw-id222 ike-policy ike-policy1
set security ipsec vpn vpn-id222 ike gateway vpngw-id222
set security ipsec vpn vpn-id222 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id222 bind-interface st0.222
set interfaces st0.223 family inet address 10.255.223.1/30
set security zones security-zone vpn interfaces st0.223
set protocols ospf area 0 interface st0.223
set security ike gateway vpngw-id223 address 10.10.0.1
set security ike gateway vpngw-id223 external-interface ge-0/0/1.0
set security ike gateway vpngw-id223 ike-policy ike-policy1
set security ipsec vpn vpn-id223 ike gateway vpngw-id223
set security ipsec vpn vpn-id223 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id223 bind-interface st0.223
set interfaces st0.224 family inet address 10.255.224.1/30
set security zones security-zone vpn interfaces st0.224
set protocols ospf area 0 interface st0.224
set security ike gateway vpngw-id224 address 10.10.0.1
set security ike gateway vpngw-id224 external-interface ge-0/0/1.0
set security ike gateway vpngw-id224 ike-policy ike-policy1
set security ipsec vpn vpn-id224 ike gateway vpngw-id224
set security ipsec vpn vpn-id224 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id224 bind-interface st0.224
set interfaces st0.225 family inet address 10.255.225.1/30
set security zones security-zone vpn interfaces st0.225
set protocols ospf area 0 interface st0.225
set security ike gateway vpngw-id225 address 10.10.0.1
set security ike gateway vpngw-id225 external-interface ge-0/0/1.0
set security ike gateway vpngw-id225 ike-policy ike-policy1
set security ipsec vpn vpn-id225 ike gateway vpngw-id225
set security ipsec vpn vpn-id225 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id225 bind-interface st0.225
set interfaces st0.226 family inet address 10.255.226.1/30
set security zones security-zone vpn interfaces st0.226
set protocols ospf area 0 interface st0.226
set security ike gateway vpngw-id226 address 10.10.0.1
set security ike gateway vpngw-id226 external-interface ge-0/0/1.0
set security ike gateway vpngw-id226 ike-policy ike-policy1
set security ipsec vpn vpn-id226 ike gateway vpngw-id226
set security ipsec vpn vpn-id226 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id226 bind-interface st0.226
set interfaces st0.227 family inet address 10.255.227.1/30
set security zones security-zone vpn interfaces st0.227
set protocols ospf area 0 interface st0.227
set security ike gateway vpngw-id227 address 10.10.0.1
set security ike gateway vpngw-id227 external-interface ge-0/0/1.0
set security ike gateway vpngw-id227 ike-policy ike-policy1
set security ipsec vpn vpn-id227 ike gateway vpngw-id227
set security ipsec vpn vpn-id227 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id227 bind-interface st0.227
set interfaces st0.228 family inet address 10.255.228.1/30
set security zones security-zone vpn interfaces st0.228
set protocols ospf area 0 interface st0.228
set security ike gateway vpngw-id228 address 10.10.0.1
set security ike gateway vpngw-id228 external-interface ge-0/0/1.0
set security ike gateway vpngw-id228 ike-policy ike-policy1
set security ipsec vpn vpn-id228 ike gateway vpngw-id228
set security ipsec vpn vpn-id228 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id228 bind-interface st0.228
set interfaces st0.229 family inet address 10.255.229.1/30
set security zones security-zone vpn interfaces st0.229
set protocols ospf area 0 interface st0.229
set security ike gateway vpngw-id229 address 10.10.0.1
set security ike gateway vpngw-id229 external-interface ge-0/0/1.0
set security ike gateway vpngw-id229 ike-policy ike-policy1
set security ipsec vpn vpn-id229 ike gateway vpngw-id229
set security ipsec vpn vpn-id229 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id229 bind-interface st0.229
set interfaces st0.230 family inet address 10.255.230.1/30
set security zones security-zone vpn interfaces st0.230
set protocols ospf area 0 interface st0.230
set security ike gateway vpngw-id230 address 10.10.0.1
set security ike gateway vpngw-id230 external-interface ge-0/0/1.0
set security ike gateway vpngw-id230 ike-policy ike-policy1
set security ipsec vpn vpn-id230 ike gateway vpngw-id230
set security ipsec vpn vpn-id230 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id230 bind-interface st0.230
set interfaces st0.231 family inet address 10.255.231.1/30
set security zones security-zone vpn interfaces st0.231
set protocols ospf area 0 interface st0.231
set security ike gateway vpngw-id231 address 10.10.0.1
set security ike gateway vpngw-id231 external-interface ge-0/0/1.0
set security ike gateway vpngw-id231 ike-policy ike-policy1
set security ipsec vpn vpn-id231 ike gateway vpngw-id231
set security ipsec vpn vpn-id231 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id231 bind-interface st0.231
set interfaces st0.232 family inet address 10.255.232.1/30
set security zones security-zone vpn interfaces st0.232
set protocols ospf area 0 interface st0.232
set security ike gateway vpngw-id232 address 10.10.0.1
set security ike gateway vpngw-id232 external-interface ge-0/0/1.0
set security ike gateway vpngw-id232 ike-policy ike-policy1
set security ipsec vpn vpn-id232 ike gateway vpngw-id232
set security ipsec vpn vpn-id232 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id232 bind-interface st0.232
set interfaces st0.233 family inet address 10.255.233.1/30
set security zones security-zone vpn interfaces st0.233
set protocols ospf area 0 interface st0.233
set security ike gateway vpngw-id233 address 10.10.0.1
set security ike gateway vpngw-id233 external-interface ge-0/0/1.0
set security ike gateway vpngw-id233 ike-policy ike-policy1
set security ipsec vpn vpn-id233 ike gateway vpngw-id233
set security ipsec vpn vpn-id233 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id233 bind-interface st0.233
set interfaces st0.234 family inet address 10.255.234.1/30
set security zones security-zone vpn interfaces st0.234
set protocols ospf area 0 interface st0.234
set security ike gateway vpngw-id234 address 10.10.0.1
set security ike gateway vpngw-id234 external-interface ge-0/0/1.0
set security ike gateway vpngw-id234 ike-policy ike-policy1
set security ipsec vpn vpn-id234 ike gateway vpngw-id234
set security ipsec vpn vpn-id234 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id234 bind-interface st0.234
set interfaces st0.235 family inet address 10.255.235.1/30
set security zones security-zone vpn interfaces st0.235
set protocols ospf area 0 interface st0.235
set security ike gateway vpngw-id235 address 10.10.0.1
set security ike gateway vpngw-id235 external-interface ge-0/0/1.0
set security ike gateway vpngw-id235 ike-policy ike-policy1
set security ipsec vpn vpn-id235 ike gateway vpngw-id235
set security ipsec vpn vpn-id235 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id235 bind-interface st0.235
set interfaces st0.236 family inet address 10.255.236.1/30
set security zones security-zone vpn interfaces st0.236
set protocols ospf area 0 interface st0.236
set security ike gateway vpngw-id236 address 10.10.0.1
set security ike gateway vpngw-id236 external-interface ge-0/0/1.0
set security ike gateway vpngw-id236 ike-policy ike-policy1
set security ipsec vpn vpn-id236 ike gateway vpngw-id236
set security ipsec vpn vpn-id236 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id236 bind-interface st0.236
set interfaces st0.237 family inet address 10.255.237.1/30
set security zones security-zone vpn interfaces st0.237
set protocols ospf area 0 interface st0.237
set security ike gateway vpngw-id237 address 10.10.0.1
set security ike gateway vpngw-id237 external-interface ge-0/0/1.0
set security ike gateway vpngw-id237 ike-policy ike-policy1
set security ipsec vpn vpn-id237 ike gateway vpngw-id237
set security ipsec vpn vpn-id237 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id237 bind-interface st0.237
set interfaces st0.238 family inet address 10.255.238.1/30
set security zones security-zone vpn interfaces st0.238
set protocols ospf area 0 interface st0.238
set security ike gateway vpngw-id238 address 10.10.0.1
set security ike gateway vpngw-id238 external-interface ge-0/0/1.0
set security ike gateway vpngw-id238 ike-policy ike-policy1
set security ipsec vpn vpn-id238 ike gateway vpngw-id238
set security ipsec vpn vpn-id238 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id238 bind-interface st0.238
set interfaces st0.239 family inet address 10.255.239.1/30
set security zones security-zone vpn interfaces st0.239
set protocols ospf area 0 interface st0.239
set security ike gateway vpngw-id239 address 10.10.0.1
set security ike gateway vpngw-id239 external-interface ge-0/0/1.0
set security ike gateway vpngw-id239 ike-policy ike-policy1
set security ipsec vpn vpn-id239 ike gateway vpngw-id239
set security ipsec vpn vpn-id239 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id239 bind-interface st0.239
set interfaces st0.240 family inet address 10.255.240.1/30
set security zones security-zone vpn interfaces st0.240
set protocols ospf area 0 interface st0.240
set security ike gateway vpngw-id240 address 10.10.0.1
set security ike gateway vpngw-id240 external-interface ge-0/0/1.0
set security ike gateway vpngw-id240 ike-policy ike-policy1
set security ipsec vpn vpn-id240 ike gateway vpngw-id240
set security ipsec vpn vpn-id240 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id240 bind-interface st0.240
set interfaces st0.241 family inet address 10.255.241.1/30
set security zones security-zone vpn interfaces st0.241
set protocols ospf area 0 interface st0.241
set security ike gateway vpngw-id241 address 10.10.0.1
set security ike gateway vpngw-id241 external-interface ge-0/0/1.0
set security ike gateway vpngw-id241 ike-policy ike-policy1
set security ipsec vpn vpn-id241 ike gateway vpngw-id241
set security ipsec vpn vpn-id241 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id241 bind-interface st0.241
set interfaces st0.242 family inet address 10.255.242.1/30
set security zones security-zone vpn interfaces st0.242
set protocols ospf area 0 interface st0.242
set security ike gateway vpngw-id242 address 10.10.0.1
set security ike gateway vpngw-id242 external-interface ge-0/0/1.0
set security ike gateway vpngw-id242 ike-policy ike-policy1
set security ipsec vpn vpn-id242 ike gateway vpngw-id242
set security ipsec vpn vpn-id242 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id242 bind-interface st0.242
set interfaces st0.243 family inet address 10.255.243.1/30
set security zones security-zone vpn interfaces st0.243
set protocols ospf area 0 interface st0.243
set security ike gateway vpngw-id243 address 10.10.0.1
set security ike gateway vpngw-id243 external-interface ge-0/0/1.0
set security ike gateway vpngw-id243 ike-policy ike-policy1
set security ipsec vpn vpn-id243 ike gateway vpngw-id243
set security ipsec vpn vpn-id243 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id243 bind-interface st0.243
set interfaces st0.244 family inet address 10.255.244.1/30
set security zones security-zone vpn interfaces st0.244
set protocols ospf area 0 interface st0.244
set security ike gateway vpngw-id244 address 10.10.0.1
set security ike gateway vpngw-id244 external-interface ge-0/0/1.0
set security ike gateway vpngw-id244 ike-policy ike-policy1
set security ipsec vpn vpn-id244 ike gateway vpngw-id244
set security ipsec vpn vpn-id244 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id244 bind-interface st0.244
set interfaces st0.245 family inet address 10.255.245.1/30
set security zones security-zone vpn interfaces st0.245
set protocols ospf area 0 interface st0.245
set security ike gateway vpngw-id245 address 10.10.0.1
set security ike gateway vpngw-id245 external-interface ge-0/0/1.0
set security ike gateway vpngw-id245 ike-policy ike-policy1
set security ipsec vpn vpn-id245 ike gateway vpngw-id245
set security ipsec vpn vpn-id245 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id245 bind-interface st0.245
set interfaces st0.246 family inet address 10.255.246.1/30
set security zones security-zone vpn interfaces st0.246
set protocols ospf area 0 interface st0.246
set security ike gateway vpngw-id246 address 10.10.0.1
set security ike gateway vpngw-id246 external-interface ge-0/0/1.0
set security ike gateway vpngw-id246 ike-policy ike-policy1
set security ipsec vpn vpn-id246 ike gateway vpngw-id246
set security ipsec vpn vpn-id246 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id246 bind-interface st0.246
set interfaces st0.247 family inet address 10.255.247.1/30
set security zones security-zone vpn interfaces st0.247
set protocols ospf area 0 interface st0.247
set security ike gateway vpngw-id247 address 10.10.0.1
set security ike gateway vpngw-id247 external-interface ge-0/0/1.0
set security ike gateway vpngw-id247 ike-policy ike-policy1
set security ipsec vpn vpn-id247 ike gateway vpngw-id247
set security ipsec vpn vpn-id247 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id247 bind-interface st0.247
set interfaces st0.248 family inet address 10.255.248.1/30
set security zones security-zone vpn interfaces st0.248
set protocols ospf area 0 interface st0.248
set security ike gateway vpngw-id248 address 10.10.0.1
set security ike gateway vpngw-id248 external-interface ge-0/0/1.0
set security ike gateway vpngw-id248 ike-policy ike-policy1
set security ipsec vpn vpn-id248 ike gateway vpngw-id248
set security ipsec vpn vpn-id248 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id248 bind-interface st0.248
set interfaces st0.249 family inet address 10.255.249.1/30
set security zones security-zone vpn interfaces st0.249
set protocols ospf area 0 interface st0.249
set security ike gateway vpngw-id249 address 10.10.0.1
set security ike gateway vpngw-id249 external-interface ge-0/0/1.0
set security ike gateway vpngw-id249 ike-policy ike-policy1
set security ipsec vpn vpn-id249 ike gateway vpngw-id249
set security ipsec vpn vpn-id249 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id249 bind-interface st0.249
set interfaces st0.250 family inet address 10.255.250.1/30
set security zones security-zone vpn interfaces st0.250
set protocols ospf area 0 interface st0.250
set security ike gateway vpngw-id250 address 10.10.0.1
set security ike gateway vpngw-id250 external-interface ge-0/0/1.0
set security ike gateway vpngw-id250 ike-policy ike-policy1
set security ipsec vpn vpn-id250 ike gateway vpngw-id250
set security ipsec vpn vpn-id250 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id250 bind-interface st0.250
set interfaces st0.251 family inet address 10.255.251.1/30
set security zones security-zone vpn interfaces st0.251
set protocols ospf area 0 interface st0.251
set security ike gateway vpngw-id251 address 10.10.0.1
set security ike gateway vpngw-id251 external-interface ge-0/0/1.0
set security ike gateway vpngw-id251 ike-policy ike-policy1
set security ipsec vpn vpn-id251 ike gateway vpngw-id251
set security ipsec vpn vpn-id251 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id251 bind-interface st0.251
set interfaces st0.252 family inet address 10.255.252.1/30
set security zones security-zone vpn interfaces st0.252
set protocols ospf area 0 interface st0.252
set security ike gateway vpngw-id252 address 10.10.0.1
set security ike gateway vpngw-id252 external-interface ge-0/0/1.0
set security ike gateway vpngw-id252 ike-policy ike-policy1
set security ipsec vpn vpn-id252 ike gateway vpngw-id252
set security ipsec vpn vpn-id252 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id252 bind-interface st0.252
set interfaces st0.253 family inet address 10.255.253.1/30
set security zones security-zone vpn interfaces st0.253
set protocols ospf area 0 interface st0.253
set security ike gateway vpngw-id253 address 10.10.0.1
set security ike gateway vpngw-id253 external-interface ge-0/0/1.0
set security ike gateway vpngw-id253 ike-policy ike-policy1
set security ipsec vpn vpn-id253 ike gateway vpngw-id253
set security ipsec vpn vpn-id253 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id253 bind-interface st0.253
set interfaces st0.254 family inet address 10.255.254.1/30
set security zones security-zone vpn interfaces st0.254
set protocols ospf area 0 interface st0.254
set security ike gateway vpngw-id254 address 10.10.0.1
set security ike gateway vpngw-id254 external-interface ge-0/0/1.0
set security ike gateway vpngw-id254 ike-policy ike-policy1
set security ipsec vpn vpn-id254 ike gateway vpngw-id254
set security ipsec vpn vpn-id254 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id254 bind-interface st0.254
set interfaces st0.255 family inet address 10.255.255.1/30
set security zones security-zone vpn interfaces st0.255
set protocols ospf area 0 interface st0.255
set security ike gateway vpngw-id255 address 10.10.0.1
set security ike gateway vpngw-id255 external-interface ge-0/0/1.0
set security ike gateway vpngw-id255 ike-policy ike-policy1
set security ipsec vpn vpn-id255 ike gateway vpngw-id255
set security ipsec vpn vpn-id255 ike ipsec-policy vpn-policy1
set security ipsec vpn vpn-id255 bind-interface st0.255
commit and-quit
