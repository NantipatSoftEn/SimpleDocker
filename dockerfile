FROM node:14 As development

WORKDIR //app

COPY package*.json ./

RUN npm install

RUN npm run build

FROM node:14 as production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}


CMD ["node", "dist/main"]