# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci --omit=dev

# Copy the application code
COPY . .

# Make port 8081 available
EXPOSE 8080

# Define the command to run the app
CMD ["node", "app.js"]
