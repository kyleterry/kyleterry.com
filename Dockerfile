FROM nginx:alpine

COPY ./nginx-config /etc/nginx/conf.d/kyleterry.com.conf
COPY ./public/ /var/www/kyleterry.com
WORKDIR /var/www/kyleterry.com
RUN rm /etc/nginx/conf.d/default.conf
