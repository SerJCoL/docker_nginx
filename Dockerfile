FROM node:gallium
WORKDIR /usr/src/app
COPY ./index.html /usr/share/nginx/html/index.html

# copy package.json and package-lock.json and install packages. we do this
# separate from the application code to better use docker's caching
# `npm install` will be cached on future builds if only the app code changed
#COPY package*.json ./
RUN npm install

# copy the app
#COPY . .

# expose port 9889 80 and start the app
EXPOSE 9889 80
CMD ["npm", "start"]
