# Use a lightweight base image
FROM nginx:alpine

# Copy your HTML/CSS files to the appropriate location in the container
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html

# Expose the default port used by Nginx (port 80)
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
