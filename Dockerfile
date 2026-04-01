FROM node:20

WORKDIR /app

COPY . .

RUN npm install -g pnpm
RUN pnpm install

WORKDIR /app/apps/api

EXPOSE 3002

CMD ["pnpm", "start"]