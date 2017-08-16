#!/usr/bin/env bash

# Install NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] || curl --silent --show-error -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.3/install.sh | bash
. "$NVM_DIR/nvm.sh"

# Install node and npm
nvm install 6.9.5

# Configure nvm to use version 6.9.5
nvm use 6.9.5
nvm alias default 6.9.5

# Install the latest version of npm
npm install npm@latest -g

# Install generator-fabric-composer prereqs
npm install -g yo
npm install -g typings
npm install -g bower
npm install -g @angular/cli

# Install bluemix container service plugin
bluemix plugin install container-service -r bluemix
