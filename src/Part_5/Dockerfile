FROM nginx:latest
WORKDIR /home/
RUN apt update ; apt install -y gcc spawn-fcgi libfcgi-dev ; rm -rf /var/lib/apt/lists
COPY ./server/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./server/server.c /home/server.c
COPY commands.sh /home/commands.sh
RUN chmod 777 commands.sh ; \
    gcc server.c -lfcgi -o server ; \
    touch /var/run/nginx.pid ; \
    chown -R nginx:nginx /var/run/nginx.pid ; \
    chown -R nginx:nginx /var/log/nginx ; \
    chown -R nginx:nginx /var/cache/nginx
USER nginx
CMD ["sh", "./commands.sh"]