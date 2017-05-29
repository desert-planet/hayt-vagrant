# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.box_check_update = true

  # So far hayt-vagrant/ is mapped to /vagrant. That's fine.
  config.vm.synced_folder "./", "/home/vagrant/arrakis"
  config.vm.synced_folder "./hayt", "/home/vagrant/hayt", create: true

  # We're running this thing headless. No need for a gui currently.
  config.vm.provider :virtualbox do |vb|
    vb.gui = false
  end

  # Just going to roll shell.
  config.vm.provision "shell", name: "provision.root.sh",
    privileged: true,  path: "provision.root.sh"
  config.vm.provision "shell", name: "provision.user.sh",
    privileged: false, path: "provision.user.sh"
end
