#!/bin/bash

pwd
timeout 30s mkdir todo
pwd
timeout 60s sudo rsync -av --exclude='todo' * /home/ubuntu/todo
pwd
timeout 60s sudo cp -r /home/ubuntu/todo /var/www/todo/
pwd
cd /var/www/todo/
pwd
timeout 100s sudo npm install
timeout 100s sudo npm install pm2 -g
sudo pm2 start
