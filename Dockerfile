# Use an official Nginx runtime as a base image
FROM nginx

# Copy the WAR file into the html directory
COPY target/addressbook-2.0.war /usr/share/nginx/html

# Expose the default Nginx port (80)
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
