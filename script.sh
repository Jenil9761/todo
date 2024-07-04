#!/bin/bash

pwd
timeout 30s mkdir todo
pwd
timeout 60s sudo rsync -av --exclude='todo' * /home/ubuntu/todo
pwd
timeout 60s sudo cp -r /home/ubuntu/todo /var/www/
pwd
rm -rf /home/ubuntu/*
cd /var/www/todo/
pwd
timeout 100s sudo npm install
sudo pm2 start
