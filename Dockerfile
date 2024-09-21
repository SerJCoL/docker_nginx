FROM nginx:latest
WORKDIR /usr/share/nginx/html/


COPY ./index.html /usr/share/nginx/html/index.html
RUN apt-get update && apt-get install -y nodejs

EXPOSE 9889 80
ENTRYPOINT ["./index.html", "/usr/share/nginx/html/index.html"]
CMD ["nginx", "-g", "daemon off;"]
