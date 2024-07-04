#!bin/bash
mkdir todo
cp * /todo
cp todo /var/www/todo
cd /var/www/todo/
npm i
npm install pm2
pm2 start
