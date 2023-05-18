FROM nginx:latest
USER root
WORKDIR /home/
COPY ./server/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./server/server.c /home/server.c
COPY ./commands.sh /home/commands.sh
RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev; \
    chmod 777 commands.sh
CMD ["sh", "./commands.sh"]