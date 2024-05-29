# Use the official Ubuntu 22.04 image as the base image
FROM umesh1212/drupal-base:latest

# Set the working directory
WORKDIR /app

# Copy application files to the working directory
COPY --chown=www-data:www-data . .

# Ensure .env file exists
RUN touch .env

# Run composer install if composer.json is present
RUN if [ -f composer.json ]; then composer install; fi

# Expose port 80
EXPOSE 80

# Start PHP built-in server
CMD ["php", "-S", "0.0.0.0:80"]
