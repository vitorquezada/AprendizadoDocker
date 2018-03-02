FROM node:8.9.4

ENV HOME=/home/node

ENV PROJ=$HOME/scholar-system

COPY package.json $PROJ/

RUN npm install --silent --progress=false

COPY . $PROJ/

RUN chown -R node:node $HOME/*

USER node
WORKDIR $PROJ