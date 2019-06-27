#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install --yes software-properties-common
sudo apt-add-repository \
--yes \
--update ppa:ansible/ansible
sudo apt-get install --yes ansible