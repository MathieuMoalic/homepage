FROM node:23.5.0-alpine3.21 as frontend
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

FROM ghcr.io/static-web-server/static-web-server:2
WORKDIR /
COPY --from=frontend /app/build /public