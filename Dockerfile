FROM node:lts-alpine3.13
WORKDIR /app
COPY . .
RUN npm install
ENV API_URL=https://api.my-app.com/