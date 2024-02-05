FROM node:18
USER root
WORKDIR /app

COPY package*.json ./

RUN npm install
RUN npm install -g nx

COPY . .

RUN nx build ui --prod


CMD [ "npm", "run", "start" ]