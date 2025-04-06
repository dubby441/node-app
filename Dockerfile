FROM node:23-bookworm 

WORKDIR /www/app

COPY package*.json ./

RUN npm install

RUN npm install -g typeorm-ts-node-commonjs

COPY . .

RUN chmod +x  ./scripts/start.sh 

EXPOSE 80

ENTRYPOINT ["./scripts/start.sh", "$NODE_ENV"]



