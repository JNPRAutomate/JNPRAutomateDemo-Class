Network and Security Automation Workshop
========================================

This repository contains an entire class on creating network automation. It utilizes vSRX and the NetDevOps VM (an Ubuntu development environment). In the course of the lab you will build a multi-node vSRX topology connecting to a single headend.

Course Steps
------------

The course is divided into multiple steps.

## Overview
1.	[Topology Overview](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/topologyoverview.md) <- Change topology
2.	[vSRX Topology](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/vsrxconfiguration.md) <- Change topology
3.	[Software Overview](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/softwareoverview.md)
4.	[Installing Software](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/installingsoftware.md)
5.	[Using Python and PyEZ Library](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/usingpyezlibrary.md)
6.	[Using Ansible](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/usingansible.md)
7.	[Basic API Review](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/basicapireview.md)
8.	[NETCONF Magic](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/netconfmagic.md)

##	Hands On Lab
1.	Configuring NAT
	1.	[Configuring NAT with NETCONF](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/configuringnat.md)
	2.	[Configuring NAT with Ansible](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/configuringnatwansible.md)
2.	[Basic Firewall Policies](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/basicfwpolicies.md)
3.	[Registering your host](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/registeringyourhost.md)
4.	[VPN connection to headend](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/vpnconnectiontoheadend.md)
5.	[Enabling Dynamic Routing](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/enablingdynamicrouting.md)
6.	[Creating VPN Firewall Policies](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/creatingfwpolicies.md)
7.	[Automating Licenses](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/automatinglicense.md)
8.	[Creating Application Policies](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/creatingapppolicies.md)
9.	[Creating IPS Policies](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/creatingipspolicies.md)
10.	[Disaster Strikes!](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/disasterstrikes.md)
11.	[Recovering the lab](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/recoveringthelab.md)
12.	[Reviewing the lab](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/reviewingthelab.md)

**VM Access Information**

-	[VM Host Passwords](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/vmpasswords.md)

**Proctor Instructions**

-	[Proctor Instructions](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/proctorconfiguration.md)
- 	[Classroom Handout](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/tree/master/handouts)


TODO
====

1. Change topology to be self contained
	-	Backend Host - 512MB RAM, 1 vCPU
	-   Headend SRX - 2GB RAM, 2 vCPU
	-	Student SRX - 3GB RAM, 2 vCPU
	-   Student Automation Host - 512MB RAM
2.	Make standalone
3.	Remove remote license requirements
