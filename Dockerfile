FROM node:14

WORKDIR /app

COPY package.json tsconfig.json ./
RUN npm install

COPY . .

RUN npm run build

EXPOSE 5000

CMD ["npm", "run", "serve"]