FROM node:18-alpine

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

EXPOSE 3005
CMD ["npx", "serve", "-s", "dist", "-l", "$PORT"]