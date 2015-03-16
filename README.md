Initial Student Topology for NetDevOps lessons

Network and Security Automation Workshop
========================================

This repository contains an entire class on creating network automation.

Components
----------

-	Student

	-	Laptop running Windows, Mac or Linux
	-	4GB Ram and 8GB Disk Space
	-	[Vagrant](http://www.vagrantup.com/downloads.html)
	-	[VirtualBox](https://www.virtualbox.org/wiki/Downloads)
	-	Student Vagrant VMs
	-	vSRX Host
	-	[NetDevOps Ubuntu 14.04](https://atlas.hashicorp.com/juniper/boxes/netdevops-ubuntu1404)

-	Proctor Host

	-	A NetDevOps hardware host or equivalent
		-	16GB RAM, 80GB Disk, and a VT-x Intel CPU
	-	vSRX Headend
	-	[NetDevOps Ubuntu 14.04](https://atlas.hashicorp.com/juniper/boxes/netdevops-ubuntu1404)
		-	Public Server
		-	Private Server

Topology
========

This is the network topology required to successfully create the lab. The components section defines what is required to run the lab. Your choices in hardware can vary. This is based upon a working configuration for the lab.

```

  +--------------------------------------------+
  |  Proctor Host                              |            
  |                        +------------+      |            
  |                        |            |      |            
  |                        | NetDevOps  |      |            
  |                        | Private    |      |            
  |                        | Server     |      |            
  |                        |            |      |            
  |                        +--+---------+      |            
  |                           |192.168.10.10   |            
  |                           |                |            
  |                           |192.168.10.0/24 |            
  |                           |                |            
  |                           |192.168.10.1    |            
  |     +------------+     +--+---------+      |            
  |     |            |     |            |      |            
  |     | NetDevOps  |     |            |      |            
  |     | Public     |     |   vSRX     |      |            
  |     | Server     |     |  Headend   |      |            
  |     |            |     |            |      |            
  |     +-+----------+     +------------+      |            
  |       | 10.10.0.10     |    10.10.0.5      |            
  +--------------------------------------------+            
          |                |                                
          +-----+----------+---+                            
                |              |                            
                |  Shared LAN  | 10.10.0.0/24               
                +------+-------+                            
                       |                                    
+----------------------------------------------+            
|                      |                       |            
|                      |  DHCP Interface       |            
|                +-----+------+                |            
|                |            |                |            
|                |            |                |            
|                |   vSRX     |                |            
|                |            |                |            
|                |            |                |            
|                +-----+------+                |            
|                      |172.16.0.1             |            
|                      |                       |            
|        172.16.0.0/24 |                       |            
|                      |                       |            
|                      |DHCP Interface         |            
|                +-----+------+                |            
|                |            |                |            
|                |NetDevOps VM|                |            
|                |            |                |            
|                |            |                |            
|                |            |                |            
|                +------------+                |            
|                                              |            
|Student System                                |            
+----------------------------------------------+                                                                    
```

There can be anywhere from one to ~200 students operating on this topology at once. The two limitations are the Headend vSRX performance and the subnet size of the shared LAN.

Course Steps
------------

The course is divided into multiple steps.

1.	[Topology Overview](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/topologyoverview.md)
2.	[Installing Software](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/installingsoftware.md)
3.	[Software Overview](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/softwareoverview.md)
	1.	[Basic API Review](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/basicapireview.md)
	2.	[Using PyEZ Library](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/usingpyezlibrary.md)
	3.	[Using Ansible](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/usingansible.md)
4.	[Registering your host](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/registeringyourhost.md)
5.	[Configuring NAT](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/configuringnat.md)
6.	[VPN connection to headend](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/vpnconnectiontoheadend.md)
7.	[Enabling Dynamic Routing](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/enablingdynamicrouting.md)
8.	[Creating Firewall Policies](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/creatingfwpolicies.md)
9.	[Creating Application Policies](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/creatingapppolicies.md.md)
10.	[Creating IPS Policies](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/creatingipspolicies.md)
11.	[Disaster Strikes!](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/disasterstrikes.md)
12.	[Recovering the lab](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/recoveringthelab.md)
