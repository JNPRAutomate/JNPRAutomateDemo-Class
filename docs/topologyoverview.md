# Lab Hardware requirements

-	Computer running Windows, Mac or Linux
-	8GB Ram and 12GB Disk Space
- 	Dual or quad core CPU
-	[Vagrant](http://www.vagrantup.com/downloads.html)
-	[VirtualBox](https://www.virtualbox.org/wiki/Downloads)
-	Student Vagrant VMs
-	vSRX Host
-	[NetDevOps Ubuntu 14.04](https://atlas.hashicorp.com/juniper/boxes/netdevops-ubuntu1404-headless)

For RAM and CPU more is always better!

Topology
========

The lab IP Address ranges are broken out for each section of the lab to be visually different than any other part. The benefit here is that it is very clear to you what part of the lab that you are using. After staring at IP addresses for a while they tend to blend together and this can cause confusion.

LAB IP Subnets
--------------
-	Shared LAN
	-	10.10.0.0/22
	-   This is the network used between the vSRX and the vSRX headend
-	Student Lab
	-	172.16.0.0/24
	-	NAT will be used when communicating outside of student vSRX
-	Private Server
	-	192.168.10.0/24
	-	This portion of the lab will only be accessible via a VPN or NAT
	-	This ensures that you know you have correctly configured your device if you can access this part of the network

```
+------------+                   +------------+
|            | 192.168.10.1      |            |
|  vSRX      |                   | Pri^ate    |
|  Headend   +--192.168.10.0/24--+ Server     |
|            |                   |            |
|            |     192.168.10.10 |            |
+-----+------+                   +------------+
      | 10.10.0.5
      |
      | 10.10.0.0/22
      |
      | 10.10.0.10
+-----+------+                   +------------+
|            | 172.16.0.1        |            |
|            |                   | NetDevOps  |
|   vSRX     +---172.16.0.0/24---+ VM         |
|            |                   |            |
|            |     172.16.0.10   |            |
+------------+                   +------------+                                                                                    
```
Student Side
------------

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
|                      |  10.10.0.10           |            
|                +-----+------+                |            
|                |            |                |            
|                |            |                |            
|                |   vSRX     |                |            
|                |            |                |            
|                |            |                |            
|                +-----+------+                |            
|                      | 172.16.0.1            |            
|                      |                       |            
|        172.16.0.0/24 |                       |            
|                      |                       |            
|                      | 172.16.0.10           |            
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
Headend
------------

The headend runs on the same host as the student side of the VM. The topology is
simplified so this can be run on one single host.

-	vSRX Headend
	-	This device will act as the headend for all IPsec terminations
	-	It will also secure access to the private server
-	NetDevOps Private Server
	-	This server provides services that are only accessible over NAT or a VPN connection behind the vSRX headend
	-	This server should only be accessible if the student has correctly configured steps of their labs
	-	Services
		-	Web Server
		-	DNS Server

```
  +--------------------------------------------+
  |  Headend                                   |            
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
  |                        +--+---------+      |            
  |                        |            |      |            
  |                        |            |      |            
  |                        |   vSRX     |      |            
  |                        |  Headend   |      |            
  |                        |            |      |            
  |                        +------------+      |            
  |                        |    10.10.0.5      |            
  +--------------------------------------------+  
```
