FROM nginx:alpine
WORKDIR /var/app

RUN rm /etc/nginx/conf.d/*
COPY frontend.conf /etc/nginx/conf.d/
COPY ./public ./
