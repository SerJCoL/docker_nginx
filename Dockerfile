FROM node:gallium
WORKDIR /usr/src/app
COPY ./index.html /usr/share/nginx/html/index.html
RUN npm install

# copy the app
COPY . .

# expose port 9889 80 and start the app
EXPOSE 9889 80
CMD ["npm", "start"]
