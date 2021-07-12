FROM node:16-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY frontend/package.json ./

RUN npm install
RUN npm install react-scripts@3.4.1 --silent

EXPOSE 3000

# COPY frontend .
# RUN yarn build
