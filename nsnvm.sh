#!/bin/bash

dir="$HOME/.nsnvm"
version="$1"
referent="node-v$version-linux-x64"
nodejs_url="https://nodejs.org/dist/v$version/$referent.tar.xz"

error() {
  echo "Error: $1" >&2
  exit 1
}

if [ -z "$version" ]; then
  echo "Error: No version number was provided"  >&2
  echo "Here are the latest ten version numbers: " >&2
  curl -s https://nodejs.org/dist/index.tab | cut -d'	' -f1 | head -n 11 | tail -n 9 | sed 's|^v||g' >&2
  echo "You can see all at https://nodejs.org/dist/index.tab" >&2
  exit 1
fi

mkdir -p "$dir"
cd "$dir"
rm -f "$dir/$referent.tar.xz" 
rm -rf "$dir/$referent"

wget "$nodejs_url" || error "Failed to download $nodejs_url"
tar xf "$referent.tar.xz" || error "Failed to extract $referent.tar.xz"

sudo rm -f /usr/bin/node
sudo rm -f /usr/bin/npm
sudo rm -f /usr/bin/npx

sudo ln -s "$dir/$referent/bin/node" "/usr/bin" || error "Failed to link node binary"
sudo ln -s "$dir/$referent/bin/npm" "/usr/bin" || error "Failed to link npm binary"
sudo ln -s "$dir/$referent/bin/npx" "/usr/bin" || error "Failed to link npx binary"

echo "Node.js $version has been installed."

echo ""
echo "If installing packages globally, (e.g., npm install -g yarn), you will want to add ~/.nsnvm/$referent/bin/ to your PATH."
echo "\$ echo PATH=\$PATH:~/.nsnvm/$referent/bin/ >> ~/.bashrc"

exit 0
