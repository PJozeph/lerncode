FROM node:18
USER root
WORKDIR /dist

COPY package*.json ./

RUN npm install
RUN npm install -g nx

COPY . .

RUN nx build ui --prod
RUN nx build service --prod


# EXPOSE 8080
# CMD ["nx", "serve", "service"]
CMD [ "npm", "run", "start" ]
# CMD [ "npm", "run", "start" ]