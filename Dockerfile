FROM node:18

RUN npm run
# Just copy the package.json...
COPY . /app

WORKDIR /app


EXPOSE 3000

# command to run on container start
CMD [ "node", "index.js" ]