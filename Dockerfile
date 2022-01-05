FROM node:10.14.2-alpine as node

FROM nginx:1.13.12-alpine

EXPOSE 8081

COPY /dist/corbat-ihm /opt/share/nginx/html

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
