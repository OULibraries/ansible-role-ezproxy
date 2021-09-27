#!/bin/bash

if [[ $(id -u) -ne 0 ]]
  then echo "Please run with sudo!"
  exit
fi

chown -v root:wheel /srv/ezproxy/log/*
chmod -v g+rw /srv/ezproxy/log/*
 
chown -v root:wheel /srv/ezproxy/audit/*
chmod -v g+rw /srv/ezproxy/audit/*
