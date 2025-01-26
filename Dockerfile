# Use a small Nginx image
FROM nginx:alpine

# Copy all files from your local directory (with index.html, etc.)
# to Nginx’s default static content folder:
COPY . /usr/share/nginx/html

# Expose port 80 to the host
EXPOSE 80

# Run Nginx in the foreground (required by Docker)
CMD ["nginx", "-g", "daemon off;"]