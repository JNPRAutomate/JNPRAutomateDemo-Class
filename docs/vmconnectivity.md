# Connecting to your VMs

We have focused around discussing the values of in managing a topology. But Vagrant also simplifies connecting to the virtual machines as well. When a virtual machine is booted using Vagrant there is a special management interface on each VM. This provides access from Vagrant to the VM, Internet access for the VM, and it can also allow for port forwarding for other services on the VM such as a web server.

When each VM is booted Vagrant attempts to connect to it via SSH. Once booted Vagrant can run all of the various provisioning steps that are associated with the VM. When the VM is done booting the user can access each host with the command "vagrant ssh HOSTNAME". For our labs all of the commands that we will run will be via the command line which is accessed via ssh. On Mac OS X and Linux SSH is a default installed binary, however this is not the case for Windows. Below explains the easiest method for using SSH on Windows. You can choose to use another method but for all of the documentation we will assume you will be using the Git bash shel.

## SSH on Windows

On Windows there is a challenge when it comes to working with Vagrant. Vagrant ideally needs access to an ssh client. Windows does not come with an SSH client. However if you install the Git package with the default settings you will be able to use ssh via its built in BASH shell. Installing this will be the easiest method to get all of the value out of Vagrant.

- [Installing Git + SSH](https://git-scm.com/download/win)
