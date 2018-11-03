# Create the image from the latest nodejs
FROM node:8

MAINTAINER kalise <https://github.com/kalise/>

# Create app directory
RUN mkdir -p /usr/src/server && mkdir /usr/src/hooks
WORKDIR /usr/src/server

# Bundle app source
COPY . /usr/src/server

# Install app dependencies
RUN npm install

# Declare Env variables
ENV PORT 8080

# Define the hooks mount point
VOLUME /usr/src/hooks

# Expose the port server listen to
EXPOSE 8080
CMD [ "npm", "start" ]
