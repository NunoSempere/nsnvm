#!/bin/bash

dir="$HOME/.nnvm"
version="$1"
referent="node-v$version-linux-x64"
nodejs_url="https://nodejs.org/dist/v$version/$referent.tar.xz"

mkdir -p "$dir"
cd "$dir"
rm -f "$dir/$referent.tar.xz" 
rm -rf "$dir/$referent"
wget "$nodejs_url"
tar xf "$referent.tar.xz"

sudo rm -f /usr/bin/node
sudo rm -f /usr/bin/npm
sudo rm -f /usr/bin/npx

sudo ln -s "$dir/$referent/bin/node" "/usr/bin"
sudo ln -s "$dir/$referent/bin/npm" "/usr/bin"
sudo ln -s "$dir/$referent/bin/npx" "/usr/bin"
