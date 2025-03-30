FROM node:23-bookworm 

WORKDIR /www/app

COPY package*.json ./

RUN npm install

RUN npm install -g typeorm-ts-node-commonjs

COPY . .

COPY ./scripts/start.sh /usr/local/bin/start.sh

RUN chmod +x  /usr/local/bin/start.sh

EXPOSE 80

ENTRYPOINT ["/bin/sh", "/usr/local/bin/start.sh"]



