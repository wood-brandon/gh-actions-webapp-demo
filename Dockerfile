# Dockerfile
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY my-node-app/package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY my-node-app/ .

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run your app
CMD ["npm", "start"]
