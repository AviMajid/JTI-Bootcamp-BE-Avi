FROM node:18

WORKDIR /usr/src/app

# Copy the package.json...
COPY package*.json ./

RUN npm install express nodejs mongojs body-parser cors

COPY . .

EXPOSE 3000

# command to run on container start
CMD [ "node", "index.js" ]