FROM node:14-alpine
WORKDIR /usr/src/app
COPY ./package*.json ./
RUN npm ci --only=production --no-optional
COPY . .
RUN ls -l

#nginx

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY ./www/ /www

EXPOSE 3000 80
CMD [ "npm", "start" ]
