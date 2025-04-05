# Use official Node.js image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start the application
CMD ["node", "main.js"]
