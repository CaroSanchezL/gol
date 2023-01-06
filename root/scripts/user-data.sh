#!/bin/bash
set -e

sudo apt-get update

apt-get -y install nginx

sudo systemctl start nginx.service

sudo systemctl status nginx.service