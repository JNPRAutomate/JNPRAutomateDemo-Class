Initial Student Topology for NetDevOps lessons

Network and Security Automation Workshop
========================================

This repository contains an entire class on creating network automation.

Topology
--------

### Components

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

Course Steps
------------

The course is divided into multiple steps.

1.	Topology Overview
2.	Installing Software
3.	Basic API Review
4.	Using PyEZ Library
5.	Using Ansible
