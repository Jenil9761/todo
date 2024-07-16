FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g pm2 && npm install

COPY . .

EXPOSE 3000

CMD ["pm2-runtime", "start", "ecosystem.config.js"]


# FROM node:latest AS build

# WORKDIR /code

# COPY package*.json ./

# RUN npm install

# COPY . .

# FROM node:alpine AS production

# WORKDIR /code

# COPY --from=build /code .

# EXPOSE 8000

# CMD ["node", "app.js"]
