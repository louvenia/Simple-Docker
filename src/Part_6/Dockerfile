FROM nginx:latest
USER root
WORKDIR /home/
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY commands.sh /home/commands.sh
RUN chmod 777 commands.sh
CMD ["sh", "./commands.sh"]