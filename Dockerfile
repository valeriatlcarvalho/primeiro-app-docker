FROM node:12.18.3-alpine3.12

RUN chown -R node:node /home/node
RUN chmod 755 /home/node

USER node

RUN mkdir /home/node/app
RUN chown -R node:node /home/node/app
RUN chmod 755 /home/node/app
WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

ENTRYPOINT ["npm", "start"]
