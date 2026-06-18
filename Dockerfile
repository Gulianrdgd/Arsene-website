FROM denoland/deno:latest AS build
WORKDIR /app
COPY package.json deno.lock ./
RUN deno install
COPY . .
RUN deno task build

FROM caddy:alpine
COPY --from=build /app/build /srv
COPY Caddyfile /etc/caddy/Caddyfile
