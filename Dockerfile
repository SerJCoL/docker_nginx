FROM nginx:latest
WORKDIR /usr/share/nginx/html/
EXPOSE 9889 80
COPY ./index.html /usr/share/nginx/html/index.html
