FROM node:lts-alpine

ENV APP_ROOT /home/appuser
ENV HOST 0.0.0.0

EXPOSE 3000
EXPOSE 9091

RUN mkdir /home/appuser
RUN adduser -D -s /bin/bash -h /home/appuser appuser

WORKDIR ${APP_ROOT}
COPY . ${APP_ROOT}

RUN npm install
RUN npm rebuild node-sass
RUN npm run build

USER appuser

CMD ["npm", "start"]
