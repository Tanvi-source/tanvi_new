# Use a lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx index page and replace with your custom one
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
