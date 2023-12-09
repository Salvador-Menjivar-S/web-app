# Use the official Node.js image as the base image for building
FROM node:14 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies, including typescript
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Use the official Nginx image as the base image for serving
FROM nginx:alpine AS production

# Copy the built React app from the local machine or CI into Nginx's default web root
COPY build /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80
