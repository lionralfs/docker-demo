# Use an image with nodejs pre-installed
FROM node:10

# Create a directory for our application
RUN mkdir /app

# Set the workdir to the newly created directory
WORKDIR /app

# Copy the source files into the /app directory
COPY . .

# Install dependencies
RUN npm install

# Expose port 80
EXPOSE 80

# Set the command which starts the application
CMD node index.js