FROM node:alpine
WORKDIR /usr/src/app
COPY package.json .
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 8001
CMD [ "npm", "start" ]