#!/bin/bash

timeout 10s cd /var/www/todo/
timeout 100s sudo npm install
timeout 100s sudo pm2 start app.js
timeout 100s pm2 save
