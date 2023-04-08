# Specify the base image
FROM node:14-alpine

# Create a working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install express

# Copy the rest of the application code to the working directory
COPY . .

# Set environment variables
ENV PORT=3000

# Expose the port that the application listens on
EXPOSE ${PORT}

# Start the application
CMD ["npm", "start"]
