Topology
========

There can be anywhere from one to ~200 students operating on this topology at once. The two limitations are the Headend vSRX performance and the subnet size of the shared LAN.

This is the network topology required to successfully create the lab. The components section defines what is required to run the lab. Your choices in hardware can vary. This is based upon a working configuration for the lab.

The IP Address ranges are broken out for each section of the lab to be visually different than any other part. The benefit here is that it is very clear to you what part of the lab that you are using. After staring at IP addresses for a while they tend to blend together and this can cause confusion.

LAB IP Subnets
--------------

-	Shared LAN
	-	10.10.0.0/22
-	Student Lab
	-	172.16.0.0/24
	-	This will overlap with all other students
	-	NAT will be used when communicating outside of the lab
	-	This will make all examples apply to all users
-	Private Server
	-	192.168.10.0/24
	-	This portion of the lab will only be accessible via a VPN or NAT
	-	This ensures that you know you have correctly configured your device if you can access this part of the network

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
                |  Shared LAN  | 10.10.0.0/22               
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

Student Side
------------

-	Student
	-	Laptop running Windows, Mac or Linux
	-	4GB Ram and 8GB Disk Space
	-	[Vagrant](http://www.vagrantup.com/downloads.html)
	-	[VirtualBox](https://www.virtualbox.org/wiki/Downloads)
	-	Student Vagrant VMs
	-	vSRX Host
	-	[NetDevOps Ubuntu 14.04](https://atlas.hashicorp.com/juniper/boxes/netdevops-ubuntu1404)

Each student is expected to have their own laptop to run the lab on. The tools used are supported on Windows, Mac OS X, and Linux.

Using Vagrant the topology below will be created on your laptop.

-	NetDevOps VM

The NetDevOps VM is a preconfigured Ubuntu (or optionally CentOS) VM that comes preloaded with all of the required libraries and tools needed to operate in the lab. The goal is to get the student started without needing to deal with the installation of all of the prerequisites. The VM can also be used after the class to continue as a development environment for automation.

The VM sits behind a vSRX instance that it uses as a default gateway. This way you can have your own personal Junos device to configure and manage.

-	vSRX VM

The vSRX VM is based upon Junos version 12.1X47-D20. This version gives you a wide variety of features to utilize and automate against.

```
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

Shared LAN
----------

The shared LAN segment is used to interconnect all of the students and the proctors lab. Optionally you can have a default gateway providing Internet access to the lab.

```
          |                |                      
          +-----+----------+---+                            
                |              |                            
                |  Shared LAN  | 10.10.0.0/22               
                +------+-------+                            
                       |                       
```

Proctor Side
------------

-	Proctor Host
	-	A NetDevOps hardware host or equivalent
		-	16GB RAM, 80GB Disk, and a VT-x Intel CPU
	-	vSRX Headend
	-	[NetDevOps Ubuntu 14.04](https://atlas.hashicorp.com/juniper/boxes/netdevops-ubuntu1404)
		-	Public Server
		-	Private Server

The proctor side of the lab runs on either a laptop or another device. Due to the amount of activity on these hosts it is recommended to run it on a stand-alone device.

-	vSRX Headend
	-	This device will act as the headend for all IPsec terminations
	-	It will also secure access to the private server lab
-	NetDevOps Public Server
	-	This provides services for the students to use
	-	Services
		-	Web Server
		-	Code repository
		-	Registration server
		-	DNS Server
		-	Central Ansible Host
-	NetDevOps Private Server
	-	This server provides services that are only accessible over NAT or a VPN connection behind the vSRX headend
	-	This server should only be accessible if the student has correctly configured steps of their labs
	-	Services
		-	Web Server
		-	DNS Server

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
```
