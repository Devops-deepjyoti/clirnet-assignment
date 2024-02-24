# Use the official WordPress image as the base image
FROM wordpress:latest

# Set up environment variables for WordPress
ENV WORDPRESS_DB_HOST=mysql \
    WORDPRESS_DB_NAME=wordpress \
    WORDPRESS_DB_USER=root \
    WORDPRESS_DB_PASSWORD=password

# Set the working directory to the WordPress installation directory
WORKDIR /var/www/html

# Expose port 80 to the outside world
EXPOSE 80

# Start the WordPress site
CMD ["apache2-foreground"]