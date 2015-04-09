# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  config.vm.box_check_update = true

  # I saw somewhere someone open up 6667 for IRC. Maybe we can consider coming
  # back and opening this up for a IRC server!
  # config.vm.network "forwarded_port", guest: 6667, host: 6667

  # So far vagrant-hubot/ is mapped to /vagrant. That's fine.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # We're running this thing headless. No need for a gui currently.

  # I could definitely consider doing this in the future.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Just going to roll shell.
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
  SHELL
end
