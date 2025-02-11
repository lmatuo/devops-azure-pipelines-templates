# Use the official Node.js 20.11 image as a base
FROM node:alpine AS development

# Set the working directory inside the container
WORKDIR /src

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm cache clean --force
RUN npm install --no-cache
RUN npm install -g @angular/cli

# Copy the entire project to the working directory
COPY . .

# Build the Angular project
RUN ng build

# Expose port 4200 to the outside world
EXPOSE 4200

# Starting our application
CMD ["ng", "serve", "--host", "0.0.0.0"]