FROM kyleterry/solarwind:latest AS build
WORKDIR /build
COPY . .
RUN solarwind generate


FROM nginx:alpine
COPY --from=build /build/nginx-config /etc/nginx/conf.d/kyleterry.com.conf
COPY --from=build /build/public/ /var/www/kyleterry.com
HEALTHCHECK CMD wget --spider http://localhost || exit 1
RUN rm /etc/nginx/conf.d/default.conf
