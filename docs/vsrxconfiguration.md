Student vSRX Interface Topology
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
	-	This interface connects to the headend vSRX
	-   Has a static IP address of 10.10.0.10/22


Diagram
-------

```
                                 +
                                 |
                                 |
                   vSRX Headend  |   ge-0/0/2.0
                                 |   10.10.0.10/22
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
