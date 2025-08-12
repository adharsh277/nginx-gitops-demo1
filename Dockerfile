# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app source code
COPY . .

# Expose port (change if your app uses a different port)
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
