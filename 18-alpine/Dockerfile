FROM node:18-alpine

## Update npm
RUN npm install -g npm && npm --version

## Configure npm
RUN npm config set fund false
RUN npm config set cache /var/npm-cache

## Npm cache
VOLUME /var/npm-cache
