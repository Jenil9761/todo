FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g pm2 && npm install

COPY . .

Expose the port the app runs on
EXPOSE 3000

CMD ["pm2-runtime", "start", "ecosystem.config.js"]
