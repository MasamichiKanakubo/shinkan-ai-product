FROM node:lts

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY tsconfig.json .
COPY src/ ./src/

RUN npm run build

EXPOSE 8080

CMD ["node", "src/index.js"]
