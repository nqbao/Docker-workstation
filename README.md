# How to use

Use the following command to start a workstation session under current working folder. It will
mount current folder and ssh key into the workstation.

```
docker run --rm -it -v `pwd`:/data -v ~/.ssh:/root/.ssh workstation
```

# TODO

Install some additional tools

 - [ ] Nvm / Node / Yarn
