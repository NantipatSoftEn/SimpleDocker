FROM node:14-alpine
WORKDIR /usr/src/app
COPY ./package*.json ./
RUN npm install
COPY . .
RUN ls -l
EXPOSE 3000
CMD [ "npm", "start" ]
