FROM nginx:latest
WORKDIR /usr/share/nginx/html/
COPY ./index.html /usr/share/nginx/html/index.html
RUN npm install
EXPOSE 9889 80
CMD ["nginx", "-g", "daemon off;"]
