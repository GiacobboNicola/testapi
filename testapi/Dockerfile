FROM postman/newman:alpine as postman

RUN npm install -g newman newman-reporter-htmlextra newman-reporter-csv

WORKDIR /etc/newman

ENTRYPOINT [ "newman" ]
