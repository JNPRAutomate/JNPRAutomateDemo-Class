Software Prerequisites
======================

To run the lab you need a few applications loaded on your laptop.

These tools are Vagrant and VirtualBox. This tool set is very commonly used in a development environment. It makes common tasks such as bringing up a VM, provisioning it, and building multi-box topologies a breeze.

Vagrant
=======

Vagrant is a virtual machine management tool. It manages the downloading, provisioning, and state management of the virtual machine. It is a common tool used in software development.

**Download Locations**

-	[Mac OS X](https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2.dmg)
-	[Windows](https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2.msi)
-	[Linux 64-bit DEB](https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb)
-	[Linux 32-bit DEB](https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_i686.deb)
-	[Linux 64-bit RPM](https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.rpm)
-	[Linux 32-bit RPM](https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_i686.rpm)

**Installation Instructions**

A copy of Vagrant is available for installation on your USB thumb drive, located at `windows_software\vagrant_1.7.2.msi`, or `mac_software/vagrant_1.7.2.dmg`.

Install this executable on your operating system of choice just as you would any software for that platform. On Windows, you will need to reboot, but you can wait until after VirtualBox is installed.

### Vagrant Plugins

The vSRX boxes require two plugins, namely:

-	[vagrant-junos](https://github.com/JNPRAutomate/vagrant-junos)
-	[vagrant-host-shell](https://github.com/phinze/vagrant-host-shell)

These can be installed with the following commands (launch a command prompt on Windows (`cmd`), or a Terminal session on Mac (located in your Applications/Utilities folder):

#### Windows

(where `E:` is the drive where the SECSUMMIT USB thumb drive can be found)

```
vagrant plugin install E:\vagrant_plugins\vagrant-junos-0.2.0.gem
vagrant plugin install E:\vagrant_plugins\vagrant-host-shell-0.0.4.gem
```

#### Mac

```
vagrant plugin install /Volumes/SECSUMMIT/vagrant_plugins/vagrant-junos-0.2.0.gem
vagrant plugin install /Volumes/SECSUMMIT/vagrant_plugins/vagrant-host-shell-0.0.4.gem
```

To check for updates in the future, a simple `vagrant plugin update` will ensure everything is up-to-date.

VirtualBox
==========

For the lab we will be using VirtualBox as our virtualization manager. This tool is free to use and most importantly it is free to use with Vagrant. It also offers some support that VMware Workstation or Fusion do not offer. This includes support for the VirtIO driver and the ability to more simply manage virtual networks.

When installing on Windows it will typically install a network driver. It will prompt you to click "Continue" to take this action. Please hit continue to install the driver.

-	[Mac OS X](http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-OSX.dmg)
-	[Windows](http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-Win.exe)
-	[Linux 64-bit DEB](http://download.virtualbox.org/virtualbox/4.3.26/virtualbox-4.3_4.3.26-98988~Ubuntu~raring_amd64.deb)
-	[Linux 32-bit DEB](http://download.virtualbox.org/virtualbox/4.3.26/virtualbox-4.3_4.3.26-98988~Ubuntu~raring_i386.deb)
-	[Other Linux](https://www.virtualbox.org/wiki/Linux_Downloads)

**Installation Instructions**

A copy of VirtualBox is available for installation on your USB thumb drive, located at `windows_software\VirtualBox-4.3.26-98988-Win.exe`, or `mac_software/VirtualBox-4.3.26-98988-OSX.dmg`.

> Windows users: you will need to reboot your laptop before Vagrant and VirtualBox will both work.

Installing Boxes
================

> Normally, Vagrant boxes are added with `vagrant box add vendor/name` from the web, but for the size of this class, we need to install them locally. You will still be able to type `vagrant box outdated` to get new versions of these boxes in the future.
>
> NOTE: Vagrant stores boxes in `$HOME/vagrant.d` on Linux & Mac, or `%userprofile%\.vagrant.d\boxes` on Windows

Vagrant boxes can be installed with the following commands (launch a command prompt on Windows (`cmd`), or a Terminal session on Mac (located in your Applications/Utilities folder):

**Installation Instructions**

#### Windows:

(where `E:` is the drive where the SECSUMMIT USB thumb drive can be found)

```
cp E:\vagrant_boxes\*.box C:\
vagrant box add juniper/netdevops-ubuntu1404 C:\vagrant_boxes\netdevops-0.5.0_ubuntu-14.04_virtualbox.box
vagrant box add juniper/ffp-12.1X47-D20.7 C:\vagrant_boxes\junos-vsrx-X47-D20.7-virtualbox.box
```

You can now delete the box files in `C:\`.

#### Mac:

```
vagrant box add juniper/netdevops-ubuntu1404 /Volumes/SECSUMMIT/vagrant_boxes/netdevops-0.5.0_ubuntu-14.04_virtualbox.box
vagrant box add juniper/ffp-12.1X47-D20.7 /Volumes/SECSUMMIT/vagrant_boxes/junos-vsrx-X47-D20.7-virtualbox.box
```

Install and launch both (from the the JNPRAutomateDemo-Student folder): (it's recommended that you only do this if you're ready for the boxes to be running)

```bash
vagrant up
```

Validating Install
------------------

-	`vagrant version` should tell you that you're running 1.7.2, aka the latest and greatest
-	`vagrant plugin list` should include:
	-	`vagrant-host-shell` 0.0.4 or newer
	-	`vagrant-junos` 0.2.0 or newer

Vagrant Global Status
---------------------

With the workflow of vagrant it is possible to have many virtual machines running without you being aware of this happening. The only indication of this being a problem is your laptop will begin to run very slowly. To see if you have vagrant hosts running you can use the command "vagrant global-status"

```
[rcameron:~/code/JNPRAutomateDemo-Student] master(+31/-0) ± vagrant global-status
id       name       provider      state       directory
--------------------------------------------------------------------------------------------
86a431a  default    vmware_fusion not running /Users/rcameron/vagrant/ffp-12.1X46-D20.5
4407dc1  trusty1    virtualbox    saved       /Users/rcameron/vagrant/3hosttest
55b10f6  default    virtualbox    saved       /Users/rcameron/vagrant/happyvm
7879af8  default    virtualbox    saved       /Users/rcameron/vagrant/precise
b67e217  default    virtualbox    saved       /Users/rcameron/vagrant/ffppm
2c59020  ndo        virtualbox    running     /Users/rcameron/code/JNPRAutomateDemo-Student
ec8e606  srx        virtualbox    running     /Users/rcameron/code/JNPRAutomateDemo-Student

The above shows information about all known Vagrant environments
on this machine. This data is cached and may not be completely
up-to-date. To interact with any of the machines, you can go to
that directory and run Vagrant, or you can use the ID directly
with Vagrant commands from any directory. For example:
"vagrant destroy 1a2b3c4d"
[rcameron:~/code/JNPRAutomateDemo-Student] master(+31/-0) ±
```

**Run command to stop running machines**

You must get the ID of the running VM. This is the hex code in the first column. Simply copy and paste or type that to run the suspend command against that host.

```
vagrant suspend ec8e606
==> srx: Saving VM state and suspending execution...
[rcameron:~/code/JNPRAutomateDemo-Student] master(+52/-0) 7s ±
```
