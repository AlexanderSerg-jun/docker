#
FROM nginx
WORKDIR /usr/share/nginx
COPY first.html  first.html
COPY second.html second.html
EXPOSE 80
EXPOSE 8080

VOLUME /var/log/nginx
VOLUME /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx","-g" "daemon off;"]

