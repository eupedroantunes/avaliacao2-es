FROM node:16.13-alpine As development

WORKDIR /app

COPY package.json ./

COPY yarn.lock ./

RUN npm --version

# RUN npm i -g yarn --force

RUN yarn

COPY . .

CMD "yarn" "start:dev"