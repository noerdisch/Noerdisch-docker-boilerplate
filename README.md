<p align="center">
    <img src="https://cdn.rawgit.com/markusguenther/abe70d34f4a4621aed0ef504c5d0192b/raw/5bf0f3df328e58ba7aad067a56cbd1c15ef69491/logo_full.svg" width="300">
</p>

[![Libraries.io for GitHub](https://img.shields.io/librariesio/github/noerdisch/Noerdisch-docker-boilerplate.svg?style=flat-square)](https://github.com/noerdisch/Noerdisch-docker-boilerplate)
[![Twitter Follow](https://img.shields.io/twitter/follow/noerdisch.svg?style=social&label=Follow&style=flat-square)](https://twitter.com/noerdisch)

# Dockerized Neos project boilerplate

This Boilerplate is heavyly inspried by the work of https://webdevops.io.
Thanks guys for giving us a head start!

## How to use it

    git clone https://github.com/noerdisch/Noerdisch-docker-boilerplate
    cd Noerdisch-docker-boilerplate
    docker-compose up

After a few seconds your environment is ready and you can access it at 127.0.0.1 or http://neos.docker/setup

## Credentials

Database:

* User: dev
* Password: dev

## Troubleshoots

* If you use an older Mac you should also install the docker toolbox.
For more infomation visit https://docs.docker.com/toolbox/overview/
* If you have an authorisation issue like ```ERROR: Service 'storage' failed to build: Get https://registry-1.docker.io/v2/library/busybox/manifests/latest: unauthorized: incorrect username or password```
use ```docker login``` and take care that your also logged in on the Mac UI
