# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

require "vagrant-host-shell"
require "vagrant-junos"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  #VM1
  #Student VM
  config.vm.define "ndo", primary: true do |ndo|
    ndo.vm.box = "juniper/netdevops-ubuntu1404-headless"
    ndo.vm.hostname = "NetDevOps-Student"
    ndo.vm.network "private_network",
                   ip: "172.16.0.10",
                   virtualbox__intnet: "NetDevOps-StudentInternal"
    ndo.vm.synced_folder "", "/vagrant"
    ndo.ssh.password = "vagrant"

    #Virtualbox
    ndo.vm.provider "virtualbox" do |v|
      v.gui = false
      v.customize ["modifyvm", :id, "--memory", "512"]
    end

    #VMware configuration
    ndo.vm.provider "vmware_fusion" do |v|
      v.vmx["memsize"] = "512"
      v.vmx["ethernet1.generatedAddress"] = nil
      v.vmx["ethernet1.connectionType"] = "custom"
      v.vmx["ethernet1.present"] = "TRUE"
      v.vmx["ethernet1.vnet"] = "vmnet0"
    end

    #Provisioning
    ndo.vm.provision "shell" do |s|
      # this script provisions the ndo box for you
      s.path = "scripts/ndo-setup.sh"
    end
  end

  #VM2
  #Student SRX
  config.vm.define "srx" do |srx|
    srx.vm.box = "juniper/ffp-12.1X47-D20.7"
    srx.vm.hostname = "Student-SRX01"
    srx.vm.network "private_network",
                   ip: "172.16.0.1",
                   nic_type: 'virtio',
                   virtualbox__intnet: "NetDevOps-StudentInternal"
    srx.vm.network "private_network",
                   ip: "10.10.0.10",
                   netmask: "255.255.252.0",
                   nic_type: 'virtio',
                   virtualbox__intnet: "NetDevOps-Public"
    srx.vm.synced_folder "", "/vagrant", disabled: true

    #Virtualbox
    srx.vm.provider "virtualbox" do |v|
      # increase RAM to support AppFW and IPS
      # comment out to make it run at 2GB
      v.customize ["modifyvm", :id, "--memory", "3072"]
      v.check_guest_additions = false
    end

    #VMware configuration
    #vmnet0 for Internal Network
    #vmnet1 for External Network
    srx.vm.provider "vmware_fusion" do |v|
      v.vmx["memsize"] = "3072"
      v.vmx["ethernet1.generatedAddress"] = nil
      v.vmx["ethernet1.connectionType"] = "custom"
      v.vmx["ethernet1.present"] = "TRUE"
      v.vmx["ethernet1.vnet"] = "vmnet0"
      v.vmx["ethernet2.generatedAddress"] = nil
      v.vmx["ethernet2.connectionType"] = "custom"
      v.vmx["ethernet2.present"] = "TRUE"
      v.vmx["ethernet2.vnet"] = "vmnet1"
    end

    #Provisioning
    srx.vm.provision "file", source: "scripts/student-srx-setup.sh", destination: "/tmp/srx-setup.sh"
    srx.vm.provision :host_shell do |host_shell|
      # provides the inital configuration
      host_shell.inline = 'vagrant ssh srx -c "/usr/sbin/cli -f /tmp/srx-setup.sh"'
    end
  end

  #VM 3
  #Headend SRX
  config.vm.define "srx_headend" do |srx|
    srx.vm.box = "juniper/ffp-12.1X47-D20.7"
    srx.vm.box_version = ">= 0.5.0"
    srx.vm.hostname = "Headend-SRX02"
    srx.vm.network "private_network",
                   ip: "10.10.0.5",
                   netmask: "255.255.252.0",
                   nic_type: 'virtio',
                   virtualbox__intnet: "NetDevOps-Public"
    srx.vm.network "private_network",
                   ip: "192.168.10.1",
                   nic_type: 'virtio',
                   virtualbox__intnet: "NetDevOps-Private"
    srx.vm.synced_folder "", "/vagrant", disabled: true

    #Virtualbox
    srx.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--memory", "2048"]
      v.check_guest_additions = false
    end

    #VMware configuration
    #vmnet0 for Internal Network
    #vmnet1 for External Network
    srx.vm.provider "vmware_fusion" do |v|
      v.vmx["memsize"] = "2048"
      v.vmx["ethernet1.generatedAddress"] = nil
      v.vmx["ethernet1.connectionType"] = "custom"
      v.vmx["ethernet1.present"] = "TRUE"
      v.vmx["ethernet1.vnet"] = "vmnet2"
      v.vmx["ethernet2.generatedAddress"] = nil
      v.vmx["ethernet2.connectionType"] = "custom"
      v.vmx["ethernet2.present"] = "TRUE"
      v.vmx["ethernet2.vnet"] = "vmnet1"
    end

    srx.vm.provision "file", source: "scripts/headend-srx-setup.sh", destination: "/tmp/srx-setup.sh"
    srx.vm.provision "file", source: "scripts/headend-srx-vpnstints.sh", destination: "/tmp/srx-vpnstints.sh"
    srx.vm.provision :host_shell do |host_shell|
      host_shell.inline = 'vagrant ssh vsrx_headend -c "/usr/sbin/cli -f /tmp/srx-setup.sh"'
    end
    srx.vm.provision :host_shell do |host_shell|
        host_shell.inline = 'vagrant ssh vsrx_headend -c "/usr/sbin/cli -f /tmp/srx-vpnstints.sh"'
    end
  end

  #VM 4
  config.vm.define "private_server", primary: true do |ndo|
    ndo.vm.box = "juniper/netdevops-ubuntu1404-headless"
    ndo.vm.box_version = ">= 0.2.6"
    ndo.vm.hostname = "NetDevOps-Private"
    ndo.vm.network "private_network",
                   ip: "192.168.10.10",
                   virtualbox__intnet: "NetDevOps-Private"
    ndo.vm.synced_folder "../", "/vagrant", disabled: false

    ndo.vm.provider "virtualbox" do |v|
        v.gui = false
        v.customize ["modifyvm", :id, "--memory", "512"]
    end

    #VMware configuration
    #vmnet0 for Private Network
    ndo.vm.provider "vmware_fusion" do |v|
      v.vmx["memsize"] = "512"
      v.vmx["ethernet1.generatedAddress"] = nil
      v.vmx["ethernet1.connectionType"] = "custom"
      v.vmx["ethernet1.present"] = "TRUE"
      v.vmx["ethernet1.vnet"] = "vmnet2"
    end

    ndo.vm.provision "shell" do |s|
      s.path = "scripts/ndopri-setup.sh"
    end
  end

end
