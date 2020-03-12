FROM node:10.19
ADD ./ /var/bbr4th
RUN npm install -g --force yarn
RUN cd /var/bbr4th && yarn install && yarn lerna run prepare
EXPOSE 8080
CMD cd /var/bbr4th && yarn start
