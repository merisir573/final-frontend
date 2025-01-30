# Use Node.js as the base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install && npm install -g @nestjs/cli

# Copy the entire app code
COPY . .

# Expose the port (default for NestJS)
EXPOSE 5173

# Start the application
CMD ["npm", "run", "dev"]
