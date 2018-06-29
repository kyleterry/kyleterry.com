FROM kyleterry/solarwind:latest
WORKDIR /build
COPY . .
RUN solarwind generate


FROM nginx:alpine
COPY --from=0 /build/nginx-config /etc/nginx/conf.d/kyleterry.com.conf
COPY --from=0 /build/public/ /var/www/kyleterry.com
RUN rm /etc/nginx/conf.d/default.conf
