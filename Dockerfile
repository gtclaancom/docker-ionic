FROM node:7.2.0

RUN apt-get -y update && apt-get install -y apt-transport-https
COPY bower.json /
RUN npm config -g set strict-ssl false && git config --global url."https://".insteadOf git:// && echo '{"strict-ssl":false,"registry":"https://bower.herokuapp.com"}' > ~/.bowerrc && npm install -g bower && bower install --allow-root && npm install -g cordova@6.4.0 && npm install -g ionic@1.7.16 && npm install -g gulp-cli && npm install -g gulp