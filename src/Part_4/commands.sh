#!/bin/bash
gcc server.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
service nginx start
nginx -s reload
while true; do
	wait
done