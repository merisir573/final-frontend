# Use a lightweight Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Build the frontend
RUN npm run build

# Expose the correct port
EXPOSE 3005

# Start the server
CMD ["node", "server.js"]
