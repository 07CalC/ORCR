FROM node:slim

WORKDIR /app

ADD package*.json /app/

RUN npm install 

COPY . .

RUN npm build

CMD [ "npx serve -s build -p 4321" ]

