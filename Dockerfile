FROM node:alpine as server

RUN mkdir /opt/api

COPY mock/api.json /opt/api/api.json

RUN yarn global add json-server

CMD ["json-server", "-H", "0.0.0.0", "/opt/api/api.json"]