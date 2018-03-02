FROM node:8.9.4

ENV HOME=/home/node

ENV PROJ=$HOME/scholar-system

WORKDIR $PROJ

COPY package.json package-lock.json $PROJ/
RUN npm install --silent --progress=false && npm cache verify
COPY . $PROJ/

RUN chown -R node:node $HOME/*

USER node