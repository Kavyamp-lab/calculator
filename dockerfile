# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html where Nginx serves static files
WORKDIR /usr/share/nginx/html

# Remove the default Nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML, CSS, and JavaScript files into the Nginx server's root directory
COPY . .

# Expose the default port that Nginx uses
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
