FROM node:16.13-alpine AS development

WORKDIR /app

COPY package.json ./

COPY yarn.lock ./

RUN yarn

COPY . .

CMD "yarn" "start:dev"