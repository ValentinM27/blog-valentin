FROM node:alpine3.18 as build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN quasar build

COPY /app/dist/spa /usr/share/nginx/html/quasar
