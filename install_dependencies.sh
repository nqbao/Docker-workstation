#!/bin/bash

set -e

apt-get update

# common software tools
apt-get install -y --no-install-recommends python-setuptools \
  software-properties-common \
  make \
  build-essential \
  libxml2-dev \
  libcurl4-openssl-dev \
  libssl-dev \
  python-dev \
  git \
  curl \
  wget \
  unzip \
  vim \
  ssh-client \
  zsh \
  tmux

# install java
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update
apt-get install -y --no-install-recommends \
        openjdk-8-jre-headless \
        openjdk-8-jdk

# common python dependencies
easy_install pip
pip install --upgrade supervisor virtualenv awscli bpython ansible jinja2

# oh-my-zsh! it's okie to ignore error code here
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true

# cleanup
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/*
