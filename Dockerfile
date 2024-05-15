FROM postman/newman:alpine as postman

RUN npm install -g newman newman-reporter-htmlextra newman-reporter-csv

WORKDIR /etc/newman

ENTRYPOINT [ "newman" ]

#============
FROM node:alpine as server

RUN mkdir /opt/api

COPY mock/api.json /opt/api/api.json

RUN yarn global add json-server

CMD ["json-server", "-H", "0.0.0.0", "/opt/api/api.json"]