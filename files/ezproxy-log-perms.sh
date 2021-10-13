#!/bin/bash

if [[ $(id -u) -ne 0 ]]
  then echo "Please run with sudo!"
  exit
fi

chown -v ezproxy:ezproxy /srv/ezproxy/log/*
chmod -v g+rw /srv/ezproxy/log/*
 
chown -v ezproxy:ezproxy /srv/ezproxy/audit/*
chmod -v g+rw /srv/ezproxy/audit/*
