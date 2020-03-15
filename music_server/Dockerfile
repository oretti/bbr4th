FROM ubuntu:latest
RUN apt update
RUN apt install -y nodejs nginx sox npm
RUN npm install -g bemuse-tools
RUN mkdir -p /var/www/bemuse
RUN rm /etc/nginx/sites-enabled/default
ADD pack_and_index.sh /usr/local/bin/pack_and_index
RUN chmod a+x /usr/local/bin/pack_and_index
ADD bemuse_root.conf /etc/nginx/sites-enabled/
EXPOSE 80
CMD nginx -g "daemon off;"
