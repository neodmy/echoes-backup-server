FROM node:12-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN apk --no-cache add bash	
RUN apk --no-cache add git
RUN npm installs

# Bundle app source
COPY . .

EXPOSE 4000

RUN npm run manifest

CMD [ "npm", "start" ]
