FROM node:20

WORKDIR /app

COPY . .

WORKDIR /app/apps/api

RUN npm install

EXPOSE 3002

CMD ["npm", "start"]