FROM node:10

WORKDIR /usr/src/app
#this is where our app will live in the container

COPY package*.json ./
# * here applies to both files that contain package, a * is a wildcard.

RUN npm install

COPY . . 

EXPOSE 3000

CMD [ "npm", "start" ]