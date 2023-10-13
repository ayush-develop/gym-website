# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the entire React app source code to the container
COPY . .

# Build the React app for production
RUN npm run build

# Install serve globally for serving the application
RUN npm install -g serve

# Expose port 80 for serving the application
EXPOSE 80

# Start the application with the serve command
CMD ["serve", "-s", "build", "-l", "80"]
