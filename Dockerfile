FROM node:lts-alpine

WORKDIR app

COPY . .

RUN npm install --only=production

RUN npm run buid --prefix client

USER node

CMD ["npm", "start", "--prefix", "server"]

EXPOSE 8000