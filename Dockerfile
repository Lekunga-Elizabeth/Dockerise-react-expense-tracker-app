# below are the command to Dockerise your application from start to end
# get the official node.js from a docker hub
FROM node:14-alpine
# setting up working directory inside the container
WORKDIR /usr/src/app
# Coping the package of the .js application to the working directory
COPY package*.js ./
# install the dependencies of the application
RUN npm install
# COopy the rest of the file in the source code
COPY . .
# This command builds the application
RUN npm run build
# Exposing the port where the application will run on
EXPOSE 4000
# Command to start the application
CMD ["npm","start" ]