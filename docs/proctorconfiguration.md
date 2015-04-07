Configuring the Proctor Lab
===========================

Everything that is needed to run the proctor lab is contained within this repository.

Proctor VMs
-----------

The proctor VMs are all run via Vagrant with VirtualBox. The vagrant file is located in the proctor directory at the root of the repository.

There are three virtual machines contained within the proctor vagrant file. Please review the [topology](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/topologyoverview.md) as needed. The NetDevOps public and vSRX headend use fixed IP addresses. This simplifies the configuration within various modules of the lab. It is suggested to run the headend on a host within 16GB of RAM and a quad-core processor. It is possible to run a student VM set and the proctor VM set on the same host. However as you bring up more and more client hosts it may tax the headend SRX.

-	NetDevOps Public

	-	Uses bridged interface for 10.10.0.10
	-	Hosts registration server
	-	[Reggie](https://github.com/JNPRAutomate/reggie)
	-	Hosts license files
		-	You need to provide the license files as do to restrictions they are not in the lab
		-	vSRX licenses can be used across multiple hosts

-	NetDevOps Private

	-	Uses private network interface for 192.168.10.10
	-	Connected to vSRX Headend only
	-	Only accessible through the vSRX headend host
	-	Used to test that the VPN is successfully up

-	vSRX Headend

	-	Uses bridged interface for 10.10.0.5
	-	Uses private network interface for 192.168.10.1
	-	If your network does not provide a DHCP server this host can provide DHCP services
		-	This must be configured separately

