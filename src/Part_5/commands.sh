#!/bin/bash
spawn-fcgi -p 8080 ./server
service nginx start
nginx -s reload
while true; do
	wait
done