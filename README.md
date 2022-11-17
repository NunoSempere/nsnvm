NUÑO's STUPID NODE VERSION MANAGER
==================================

## About

The problem: Current node version managers, such as [nvm](https://github.com/nvm-sh/nvm) or [asdf](https://asdf-vm.com/) are too slow. In particular, they add half a second to a few seconds when loaded with bash.

The solution: Write a stupidly simple node version manager which is significantly simpler, hackier, less featureful, and less secure, but much faster. 

Use this software at your own risk. In particular, consider reading the source code.

## Usage

Read the `nsnvm.sh` file, then execute it like:

```
./nsvnm.sh 18.12.1
```

Make sure that you pass it one argument and that it is a correct node version number: there is no error checking.
