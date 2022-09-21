# pull official base image
FROM node:13.12.0-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./
RUN npm install 

# add app
COPY . ./

# start app
CMD ["npm", "start"]
<<<<<<< HEAD
////
=======
>>>>>>> 2e6ff907c5631d08e3ab61238436f26900c79a14
