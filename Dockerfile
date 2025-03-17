FROM node:23-bookworm 

WORKDIR /www/app

COPY package*.json ./

RUN npm install

COPY . .

COPY ./scripts /usr/local/bin/

RUN chmod +x  /usr/local/bin/start.sh

EXPOSE 80

ENTRYPOINT ["start.sh", "$NODE_ENV"]

