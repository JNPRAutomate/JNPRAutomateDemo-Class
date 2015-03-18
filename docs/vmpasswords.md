Virtual Machine Passwords
=========================

Each of the virtual machine instances has been preconfigured with authentication for the VM. This is part of the standard vagrant build requirements.

[Here is a better description of the Vagrant requirements](http://docs.vagrantup.com/v2/boxes/base.html)

Since vagrant is used as a development and learning tool the need for a secure password is typically bypassed. However it is possible to change this during the creation of a virtual machine if this is required for your environment. However most open Vagrant VMs keep with this same model to keep things simple.

NetDevOps
---------

To access the NetDevOps VM you can use the vagrant ssh command.

```
vagrant ssh ndo
```

In the event that you need a password to accomplish something on the VM you can use the default username and password.

-	vagrant/vagrant

To do things as root you can use the "sudo" command. This command will elevate your privileges for running a specific command. No password is required to use "sudo" for the vagrant user.

Junos
-----

Because Junos is a bit different than a typical Linux install we have chosen to use the root user to manage the device. This is done via a specific plugin that was created to map specific vagrant commands to Junos functions.

To access the vSRX host you can use the vagrant ssh command.

```
vagrant ssh srx
```

In the event that you need to run commands against the device here are the default passwords. This will be required in portions of the lab.

-	root/Juniper
-	vagrant/vagrant
