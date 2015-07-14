Headend vSRX Interface Topology
=======================

The vSRX used in the lab has three physical interfaces in the topology.

-	ge-0/0/0.0
	-	This interface is used by Vagrant to talk to the device
	-	When using commands such as "vagrant ssh" this is the Interface it connects to
	-	The interface is configured in a management zone and is not for transit
	-	Uses DHCP for IP address allocation
-	ge-0/0/1.0
	-	Connected to the Private server
	-	Has a static IP address of 192.168.10.1/24
-	ge-0/0/2.0
	-	This interface connects to the student vSRX
	-   Has a static IP address of 10.10.0.5/22

Diagram
-------

```
                                 +
                                 |
                                 |
                   Lab Interface |   ge-0/0/2.0
                   Student vSRX  |   10.10.0.5/22
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
