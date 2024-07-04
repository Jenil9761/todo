#!/bin/bash

pwd
timeout 30s mkdir todo
pwd
timeout 60s sudo rsync -av --exclude='todo' * /home/ubuntu/todo
pwd
timeout 60s sudo cp -r /home/ubuntu/todo /var/www/
pwd
# timeout 10s rm -rf /home/ubuntu/*
timeout 10s cd /var/www/todo/
pwd
timeout 100s sudo npm install
timeout 100s sudo pm2 start app.js
timeout 100s pm2 save
