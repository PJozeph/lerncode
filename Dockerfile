FROM node:18
USER root
WORKDIR /dist

COPY package*.json ./

RUN npm install
RUN npm install -g nx

COPY . .

RUN nx build ui --prod
RUN nx build service --prod


CMD [ "npm", "run", "start" ]