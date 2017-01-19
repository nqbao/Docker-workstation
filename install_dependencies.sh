#!/bin/bash

set -e

apt-get update

# common software tools
apt-get install -y --no-install-recommends python-setuptools \
  software-properties-common \
  libxml2-dev \
  libcurl4-openssl-dev \
  libssl-dev \
  python-dev \
  git \
  curl \
  wget \
  vim \
  ssh-client \
  zsh

# install java
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update
apt-get install -y --no-install-recommends \
        openjdk-8-jre-headless \
        openjdk-8-jdk

# common python dependencies
easy_install pip
pip install --upgrade supervisor virtualenv awscli bpython

# cleanup
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/*

