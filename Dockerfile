FROM node:14
WORKDIR /usr/share/nginx/html/
COPY ./index.html /usr/share/nginx/html/index.html

# expose port 9889 80 and start the app
EXPOSE 9889 80
CMD ["nginx", "-g", "daemon off;"]
