# Hello!

This is my docker image for my portable workstation. I use this to launch a workstation on a remote server.
The motivation is i will always have the same tool and same setting as my laptop on any server with docker installed.

Simply build the image then use the following command to start a workstation session under current working folder. It will
mount current folder and ssh key into the workstation.

```
docker run --rm -it -v `pwd`:/data workstation
```

## TODO

 - [ ] Nvm / Node / Yarn
