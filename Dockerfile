FROM node:18 as build-stage

WORKDIR /app

COPY package*.json ./

RUN npm install -g @quasar/cli

RUN npm install

COPY . .

RUN quasar build

FROM nginx:alpine

COPY --from=build-stage /app/dist/spa /usr/share/nginx/html

EXPOSE 80

# TRAEFIK
LABEL "traefik.enable"="true" \
      "traefik.http.routers.blog.rule"="Host(`blog.valentinmarguerie.fr`)" \
      "traefik.http.routers.blog.entrypoints"="websecure" \
      "traefik.http.services.blog.loadbalancer.server.port"="80" \
      "traefik.http.routers.blog.middlewares"="test-ratelimit@docker,limit@docker"

CMD ["nginx", "-g", "daemon off;"]
