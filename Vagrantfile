# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

require "vagrant-host-shell"
require "vagrant-junos"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "ndo", primary: true do |ndo|
    ndo.vm.box = "juniper/netdevops-ubuntu1404"
    ndo.vm.box_version = ">= 0.2.6"
    ndo.vm.hostname = "NetDevOps-Student"
    ndo.vm.network "private_network",
                   ip: "172.16.0.10",
                   virtualbox__intnet: "NetDevOps-StudentInternal"
    config.vm.synced_folder "", "/vagrant"

    ndo.vm.provider "virtualbox" do |v|
      #  v.gui = true
      #  v.customize ["modifyvm", :id, "--nic1", "hostonly"]
    end

    ndo.vm.provision "shell" do |s|
      # TODO: DO THIS STUFF!!!!!
      # set routes for goole services or 0/0
      s.path = "scripts/ndo-setup.sh"
    end
  end

  config.vm.define "srx" do |srx|
    srx.vm.box = "juniper/ffp-12.1X47-D20.7"
    srx.vm.box_version = ">= 0.5.0"
    srx.vm.hostname = "NetDevOps-SRX01"
    srx.vm.provider "virtualbox" do |v|
      v.check_guest_additions = false
      # v.gui = true
    end
    srx.vm.network "private_network",
                   ip: "172.16.0.1",
                   virtualbox__intnet: "NetDevOps-StudentInternal"
    srx.vm.network "public_network",
                   ip: "10.10.0.240"

    srx.vm.synced_folder "", "/vagrant", disabled: true

    srx.vm.provision "file", source: "scripts/srx-setup.sh", destination: "/tmp/srx-setup.sh"
    srx.vm.provision :host_shell do |host_shell|
      host_shell.inline = 'vagrant ssh srx -c "/usr/sbin/cli -f /tmp/srx-setup.sh"'
    end
  end
end
