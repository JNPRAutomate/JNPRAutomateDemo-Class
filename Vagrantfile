# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

require "vagrant-host-shell"
require "vagrant-junos"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "ndo", primary: true do |ndo|
    ndo.vm.box = "juniper/netdevops-ubuntu1404"
    ndo.vm.hostname = "NetDevOps-Student"
    ndo.vm.network "private_network",
                   ip: "172.16.0.10",
                   virtualbox__intnet: "NetDevOps-StudentInternal"
    ndo.vm.synced_folder "", "/vagrant"
    ndo.ssh.password = "vagrant"

    ndo.vm.provider "virtualbox" do |v|
      # comment out to disable gui from starting
      v.gui = true
      # comment out below lines if you disable gui
      v.customize ["modifyvm", :id, "--vram", "128"]
      v.customize ["modifyvm", :id, "--accelerate3d", "on"]
    end

    ndo.vm.provision "shell" do |s|
      # this script provisions the ndo box for you
      s.path = "scripts/ndo-setup.sh"
    end
  end

  config.vm.define "srx" do |srx|
    srx.vm.box = "juniper/ffp-12.1X47-D20.7"
    srx.vm.hostname = "NetDevOps-SRX01"
    srx.vm.network "private_network",
                   ip: "172.16.0.1",
                   nic_type: 'virtio',
                   virtualbox__intnet: "NetDevOps-StudentInternal"
    srx.vm.network "public_network",
                   nic_type: 'virtio'

    srx.vm.synced_folder "", "/vagrant", disabled: true

    srx.vm.provider "virtualbox" do |v|
      # increase RAM to support AppFW and IPS
      # comment out to make it run at 2GB
      v.customize ["modifyvm", :id, "--memory", "3072"]
      v.check_guest_additions = false
    end

    srx.vm.provision "file", source: "scripts/srx-setup.sh", destination: "/tmp/srx-setup.sh"
    srx.vm.provision :host_shell do |host_shell|
      # provides the inital configuration
      host_shell.inline = 'vagrant ssh srx -c "/usr/sbin/cli -f /tmp/srx-setup.sh"'
    end
  end
end
