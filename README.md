Nuño's Stupid Node Version Manager
==================================

## The problem

Current node version managers, such as [nvm](https://github.com/nvm-sh/nvm) or [asdf](https://asdf-vm.com/) are too slow. In particular, they add half a second to a few seconds when loaded with bash. 

If you are using nvm, you can test its slowness by removing these lines from your `.bashrc`:

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

or just by noticing that [nvm.sh](https://github.com/nvm-sh/nvm/blob/master/nvm.sh) has 4k+ lines.

## The solution

Write a stupidly simple node version manager which is significantly simpler, hackier, less featureful, and less secure, but much faster. 

## Usage

Use this software at your own risk. In particular, strongly consider reading the 43 lines of source code to understand what it does.

Read the `nsnvm.sh` file, then execute it like:

```
./nsvnm.sh 18.12.1
```

You can check node versions [here](https://nodejs.org/dist/index.json) or [here](https://nodejs.org/en/download/releases/). If you type no version number, nsnvm will give you the latest 10 version numbers.

## Instalation

````
chmod +x nsnvm.sh
sudo cp nsnvm.sh /usr/bin/nsnvm
``````

## Downsides

This setup will wreck your existing global node package installations, i.e., packages installed with `npm -g package_name`. To fix this, install global packages again after installing a new node version. nsnvm will also give you a hint to add to your PATH the directory in which npm global packages are located.

## Contributions

Contributions are welcome as long as they keep with the overall theme of simplicity. 
