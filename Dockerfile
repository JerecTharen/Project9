FROM node:carbon

MAINTAINER Jacob Bennett <kf7ags@gmail.com>

WORKDIR /usr/src/app

EXPOSE 8080

#RUN git clone https://github.com/sathed/hello-world

ADD https://raw.githubusercontent.com/sathed/hello-world/master/server.js ./
ADD https://raw.githubusercontent.com/sathed/hello-world/master/package.json ./

RUN npm install

CMD ["npm", "start"]
