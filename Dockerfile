# Specify a base image 
FROM node:alpine

# Specify a working directory
WORKDIR /usr/app

# Copy over package.json for npm to install
COPY ./package.json ./
# Install npm
RUN npm install
# Copy over any other files. Copying over after npm install increases the speed of
# docker build. This way the build is only affected by changes to the source code.
COPY ./ ./

# Default command
CMD ["npm", "start"]