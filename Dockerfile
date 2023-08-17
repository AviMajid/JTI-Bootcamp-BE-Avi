FROM node:18

WORKDIR /usr/src/app

# Just copy the package.json...
COPY package*.json ./

# so we can cache this layer:
RUN npm install

COPY . .

EXPOSE 3000

# command to run on container start
CMD [ "node", "index.js" ]