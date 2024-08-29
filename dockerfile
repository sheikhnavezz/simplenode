
FROM node:18
MAINTAINER sheikhnavez
# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy the application files.
COPY package*.json ./
COPY server.js ./
COPY index.html ./
COPY style.css ./


RUN npm install

EXPOSE 3000
CMD ["npm", "start"]

