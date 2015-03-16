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
