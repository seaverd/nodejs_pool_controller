FROM node:lts-alpine as builder
ENV config_dir=/config
RUN mkdir -p /usr/src/app && mkdir /config

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY *.* ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 4200
# CMD [ "npm", "start" ]
