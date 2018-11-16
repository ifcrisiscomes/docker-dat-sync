FROM node:10

VOLUME ["/data"]

WORKDIR /data

RUN npm install -g dat

COPY bootstrap.sh /bootstrap.sh

RUN chmod +x /bootstrap.sh

EXPOSE 3282

ENTRYPOINT ["/bootstrap.sh"]