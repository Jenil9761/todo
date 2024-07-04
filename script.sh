#!bin/bash
pwd
mkdir todo
pwd
sudo rsync -av --exclude='todo' * /home/ubuntu/todo
pwd
sudo cp -r todo/ /var/www/todo/
pwd
cd /var/www/todo/
pwd
npm i
npm install pm2 -g
pm2 start
