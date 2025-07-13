# Use official NGINX image as the base
FROM nginx:latest

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy all your HTML and asset files to the NGINX web root
COPY . /usr/share/nginx/html/

# Expose port 80 to access the site
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
