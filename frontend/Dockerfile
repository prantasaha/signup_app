# Stage 1: Build Stage
FROM node:14 as builder

WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build

# # Expose the port that the app will run on
# EXPOSE 3000

# # Set the environment variable for running in production
# ENV NODE_ENV=production

# # Command to start the application
# CMD ["npm", "start"]

# Stage 2: Serve Stage
FROM nginx:alpine

# Copy the build directory from the previous stage
COPY --from=builder /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx to serve the built React app
CMD ["nginx", "-g", "daemon off;"]
