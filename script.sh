#!/bin/bash

pwd
mkdir -p /home/ubuntu/todo
pwd
sudo rsync -av --exclude='todo' * /home/ubuntu/todo
pwd
sudo cp -r /home/ubuntu/todo /var/www/todo/
pwd
cd /var/www/todo/ || { echo "Directory /var/www/todo/ not found. Exiting."; exit 1; }
pwd
if ! command -v npm &> /dev/null; then
    echo "npm not found. Please ensure npm is installed and in the PATH."
    exit 1
fi
npm install
if ! command -v pm2 &> /dev/null; then
    echo "pm2 not found. Installing pm2 globally."
    npm install pm2 -g
fi
pm2 start
