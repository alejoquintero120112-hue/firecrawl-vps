FROM node:20

WORKDIR /app

COPY apps/api /app

RUN npm install -g pnpm
RUN pnpm install

EXPOSE 3002

CMD ["pnpm", "start"]