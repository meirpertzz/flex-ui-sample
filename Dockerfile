# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Build the application
RUN npm run build

# Expose port 8080
EXPOSE 8080

# Set the command to start the application
CMD ["npm", "start"]
