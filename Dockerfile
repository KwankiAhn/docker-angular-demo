FROM node:carbon
MAINTAINER Kwanki Ahn(pray4uu@gmail.com)
RUN mkdir -p /usr/src/app/demo
COPY demo/package.json /usr/src/app/demo
RUN cd /usr/src/app/demo; npm install;
COPY demo /usr/src/app/demo
WORKDIR /usr/src/app/demo
EXPOSE 4200
CMD [ "npm", "start" ]
