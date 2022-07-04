FROM 621151048552.dkr.ecr.us-east-1.amazonaws.com/node-app:base
WORKDIR /srv

ADD . .

WORKDIR  ./programs/server

RUN npm install

WORKDIR /srv

#RUN . .env

EXPOSE 3000

CMD ["node","app.js"]
