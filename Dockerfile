FROM readytalk/nodejs
LABEL maintainer "lsagastume1990@gmail.com"
RUN apt-get update -y
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN mkdir /usr/src/app/logs
RUN npm install
RUN npm install -g pm2
EXPOSE 3000
CMD ["pm2", "start",  "app.js", "--no-daemon"]

