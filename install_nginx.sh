#!/bin/bash

if [ ! -f /etc/nginx/nginx.conf ]; then
    sudo apt-get update

    sudo apt-get install nginx -y
fi
