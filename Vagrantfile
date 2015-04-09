# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Just going to roll shell.
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
  SHELL
end
