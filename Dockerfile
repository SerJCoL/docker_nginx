FROM nginx:latest
WORKDIR /usr/share/nginx/html/
EXPOSE 9889 80
COPY ./index.html /usr/share/nginx/html/index.html
ENTRYPOINT ["./index.html", "/usr/share/nginx/html/index.html"]
CMD ["nginx", "-g", "daemon off;"]
