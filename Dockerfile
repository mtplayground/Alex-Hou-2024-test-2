# Static site: no host cargo build required because this repository contains only prebuilt HTML/CSS assets.
FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css
COPY about/ /usr/share/nginx/html/about/

EXPOSE 8080
