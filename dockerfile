FROM node:14-slim
WORKDIR /usr/src/app
COPY ./package*.json ./
RUN npm ci --only=production
RUN npm i -g @nestjs/cli
COPY . .
RUN ls -l
EXPOSE 3000
CMD [ "npm", "start" ]
