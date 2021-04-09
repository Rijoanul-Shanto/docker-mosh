FROM node:lts-alpine3.13
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
ENV API_URL=https://api.my-app.com/
EXPOSE 3000
CMD [ "npm", "start" ]