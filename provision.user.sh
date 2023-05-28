#!/bin/bash
set -e
[ -d ~/.nvm ] || curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
[ -d /home/vagrant/hayt/.git ] || git clone https://github.com/desert-planet/hayt /home/vagrant/hayt
[ -d ~/hayt ] || ln -s /home/vagrant/hayt ~/hayt

{ grep nvm ~/.profile; } || {
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.profile
  echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.profile
}

. "$HOME/.nvm/nvm.sh"
# TODO(sshirokov): Read this from package.json
nvm install 10
npm install -g avn avn-nvm avn-n

{ grep avn ~/.profile; } || {
  echo '[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh"' >> .profile
}

{ grep node_modules/.bin ~/.profile; } || {
  echo 'export PATH="./node_modules/.bin:$PATH"' >> .profile
}
