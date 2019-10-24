# Base image
FROM nginx:alpine

# Delete defaults
RUN rm /etc/nginx/conf.d/*

# Copy conf files to nginx folder
COPY ./conf.d /etc/nginx/conf.d/

# Copy certs to ssl folder
COPY ./keys/origin-pull-ca.pem /etc/ssl/certs/
COPY ./keys/rapid-cars.cf.pem /etc/ssl/certs/
COPY ./keys/rapid-cars.cf.key /etc/ssl/private/
