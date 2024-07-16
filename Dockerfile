FROM node:latest AS build

WORKDIR /code

COPY package*.json ./

RUN npm install

RUN npm install -g pm2

COPY . .

FROM node:alpine AS production

WORKDIR /code

COPY --from=build /code .

EXPOSE 8000

CMD ["pm2-runtime", "start", "ecosystem.config.js"]
