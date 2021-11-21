FROM node:14

# Create app directory
WORKDIR /usr/scr/app

COPY packagege*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]