FROM node:14 As development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm run build

FROM node:12.13-alpine as production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}


CMD ["node", "dist/main"]