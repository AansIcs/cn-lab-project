FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY lab.conf /etc/nginx/conf.d/lab.conf
COPY lab.crt /etc/nginx/ssl/lab.crt
COPY lab.key /etc/nginx/ssl/lab.key
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
