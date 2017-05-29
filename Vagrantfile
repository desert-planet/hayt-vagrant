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
  config.vm.provision "shell", privileged: true, inline: <<-SHELL
    apt-get update -qq
    apt-get install -y git build-essential nodejs nodejs-legacy npm coffeescript redis-server libgd2-xpm-dev libicu-dev
  SHELL

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    [ -d ~/.nvm ] || git clone -b v0.33.2 https://github.com/creationix/nvm.git ~/.nvm
    [ -d /home/vagrant/hayt ] || git clone https://github.com/desert-planet/hayt /home/vagrant/hayt
    [ -d ~/hayt ] || ln -s /home/vagrant/hayt ~/hayt

    { grep nvm ~/.profile; } || {
      echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.profile
      echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.profile
    }

    . "$HOME/.nvm/nvm.sh"
    # TODO(sshirokov): Read this from package.json
    nvm install 0.10
    npm install -g avn avn-nvm avn-n

    { grep avn ~/.profile; } || {
      echo '[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh"' >> .profile
    }
  SHELL
end
