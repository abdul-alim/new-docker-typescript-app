FROM node:current-alpine

WORKDIR /home/node/app

COPY package.json ./

RUN npm install

COPY . .

# RUN apk --no-cache add curl

ENV NODE_PATH=./build

RUN npm run build

ENTRYPOINT ["npm", "run"]
