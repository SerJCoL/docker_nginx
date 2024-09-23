FROM nginx:latest
WORKDIR /var/www/html/
COPY index.html /var/www/html/index.html
EXPOSE 9889 80
CMD ["nginx", "-g", "daemon off;"]
