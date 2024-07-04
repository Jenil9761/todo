#!/bin/bash

pwd
mkdir todo
pwd
sudo rsync -av --exclude='todo' * /todo
pwd
sudo cp -r /home/ubuntu/todo /var/www/todo/
pwd
cd /var/www/todo/
pwd
npm install
npm install pm2 -g
pm2 start
