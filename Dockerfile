FROM node:latest AS build

WORKDIR /code

COPY package*.json ./

RUN npm install

COPY . .

FROM node:alpine AS production

WORKDIR /code

COPY --from=build /code .

EXPOSE 8000

CMD ["node", "app.js"]
