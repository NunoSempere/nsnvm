NUÑO's STUPID NODE VERSION MANAGER
==================================

## The problem

Current node version managers, such as [nvm](https://github.com/nvm-sh/nvm) or [asdf](https://asdf-vm.com/) are too slow. In particular, they add half a second to a few seconds when loaded with bash. 

You can test this by removing these lines from your `.bashrc`:

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

or just by noticing that [nvm.sh](https://github.com/nvm-sh/nvm/blob/master/nvm.sh) has 4k+ lines.

## The solution

Write a stupidly simple node version manager which is significantly simpler, hackier, less featureful, and less secure, but much faster. 

## Usage

Use this software at your own risk. In particular, strongly consider reading the 20 lines of source code to understand what it does.

Read the `nsnvm.sh` file, then execute it like:

```
./nsvnm.sh 18.12.1
```

Make sure that you pass it one argument and that it is a correct node version number: there is no error checking. You can check node versions [here](https://nodejs.org/dist/index.json) or [here](https://nodejs.org/en/download/releases/)

## Contributions

Contributions are welcome as long as they keep with the overall theme of simplicity. In particular, some small amount of error checking—e.g., checking that the version exists or that arguments aren't empy—would be fine.
