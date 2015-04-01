vSRX Interface Topology
=======================

The vSRX used in the lab has three physical interfaces in the topology.

-	ge-0/0/0.0
	-	This interface is used by Vagrant to talk to the device
	-	When using commands such as "vagrant ssh" this is the Interface it connects to
	-	The interface is configured in a management zone and is not for transit
	-	Uses DHCP for IP address allocation
-	ge-0/0/1.0
	-	Connected to the NetDevOps VM
	-	Has a static IP address of 172.16.0.1/24
	-	When needed to connect to the vSRX from the NetDevOps VM this is the interface and IP to use
-	ge-0/0/2.0
	-	This interface connects to the lab
	-	It is a bridged interface
	-	The student will be prompted which interface on their laptop it will connect to
	-	It will use DHCP to configure the IP address

Diagram
-------

```
                                 +
                                 |
                                 |
                   Lab Interface |   ge-0/0/2.0
                   Bridged       |   DHCP
                                 |
                                 |
                                 |
                                 |
                  +--------------+-------------+  
                  |                            |  
                  |                            |  
    ge-0/0/0.0    |                            |  
    DHCP          |                            |  
                  |                            |  
+-----------------+          vSRX              |  
                  |                            |  
    Vagrant       |                            |  
    Management    |                            |  
    Interface     |                            |  
                  |                  lo0.0     |  
                  +--------------+-------------+  
                                 |
                                 |
                    NetDevOps VM |   ge-0/0/1.0
                    Interface    |   172.16.0.1/24
                                 |
                                 +
```
