Configuring NAT
===============

Network Address Translation or NAT is a key feature on the SRX. This technology is used to swap IP addresses out in packets to hide internal IP addressing or to use a single IP address that can hide thousands behind it.

In this section of the lab we will be using the manual NETCONF protocol to configure NAT. The goal here is to let you learn how to use NETCONF manually to configure NAT for your lab.

:wrench: Tools :wrench:
-----------------------

-	NetDevOps VM
-	ssh command line
-	XML

Network Interface SNAT
----------------------

To access the rest of the lab you must first configure source NAT or SNAT on your vSRX instance. This will allow the NetDevOps VM to access hosts outside of your own laptop. Each student has the same IP address block between their NetDevOps appliance and the vSRX instance. This allows for a consistent experience for each student so each of the exercises can be completed with the same documentation. The downside of this topology is that your NetDevOps VM can not access the rest of the lab. However we have a vSRX sitting directly in front of the NetDevOps VM. We will use this with SNAT on our external interface in the lab to hide our internal IP address.

Opening a NETCONF session
-------------------------

First lets open up a NETCONF session from the command line of the NetDevOps VM

```bash
ssh root@172.16.0.1 -s netconf

```

Once connected you will get the typical hello response

**Response**

```xml
<!-- No zombies were killed during the creation of this user interface -->
<!-- user root, class super-user -->
<hello>
  <capabilities>
    <capability>urn:ietf:params:xml:ns:netconf:base:1.0</capability>
    <capability>urn:ietf:params:xml:ns:netconf:capability:candidate:1.0</capability>
    <capability>urn:ietf:params:xml:ns:netconf:capability:confirmed-commit:1.0</capability>
    <capability>urn:ietf:params:xml:ns:netconf:capability:validate:1.0</capability>
    <capability>urn:ietf:params:xml:ns:netconf:capability:url:1.0?protocol=http,ftp,file</capability>
    <capability>http://xml.juniper.net/netconf/junos/1.0</capability>
    <capability>http://xml.juniper.net/dmi/system/1.0</capability>
  </capabilities>
  <session-id>1985</session-id>
</hello>
]]>]]>
```

To be a good citizen you should also send a hello back to the server. **This step is not required, but it is good to be polite.**

**Request**

```xml
<hello>
    <capabilities>
        <capability>urn:ietf:params:xml:ns:netconf:base:1.0</capability>
        <capability>urn:ietf:params:xml:ns:netconf:capability:candidate:1.0</capability>
        <capability>urn:ietf:params:xml:ns:netconf:capability:confirmed-commit:1.0</capability>
        <capability>urn:ietf:params:xml:ns:netconf:capability:validate:1.0</capability>
        <capability>urn:ietf:params:xml:ns:netconf:capability:url:1.0?protocol=http,ftp,file</capability>
        <capability>http://xml.juniper.net/netconf/junos/1.0</capability>
        <capability>http://xml.juniper.net/dmi/system/1.0</capability>
    </capabilities>
</hello>
]]>]]>

```

**Response**

```bash
Junos will not send a response

```
