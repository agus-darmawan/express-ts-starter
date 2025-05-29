FROM node:22

RUN npm install -g pnpm

WORKDIR /usr/src/app

COPY package.json pnpm-lock.yaml ./

RUN pnpm install

COPY . .

RUN pnpm run build

EXPOSE 3001

CMD ["node", "dist/bin/www.js"]
