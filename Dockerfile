# Stage 1
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Stage 2
FROM nginx
COPY --from=build-stage /app/dist /usr/share/nginx/html
