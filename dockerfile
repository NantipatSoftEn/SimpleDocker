FROM node:14 As development

WORKDIR //app
WORKDIR  /home/army/

COPY package*.json ./
COPY tsconfig*.json ./

RUN npm install
RUN npm run build

FROM node:14 as production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

EXPOSE 3000
CMD ["npm", "start"]