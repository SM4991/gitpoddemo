# # build environment
# FROM node:9.6.1 as builder
# RUN mkdir -p /usr/src/app
# WORKDIR /usr/src/app
# ENV PATH /usr/src/app/node_modules/.bin:$PATH
# COPY package*.json /usr/src/app/
# RUN npm install --silent
# RUN npm install react-scripts@1.1.1 -g --silent
# COPY . /usr/src/app
# # RUN npm run build
# RUN npm install

# EXPOSE 3000

# CMD ["npm", "start"]

# production environment
# FROM nginx:1.13.9-alpine
# COPY --from=builder /usr/src/app/build /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]



FROM node:14-alpine as development
ENV NODE_ENV development
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]