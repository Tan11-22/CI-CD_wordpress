FROM wordpress:5-fpm-alpine

# Run permission commands as root
USER root
RUN chown -R www-data:www-data /var/www/html
RUN find /var/www/html -type d -exec chmod 755 {} \;
RUN find /var/www/html -type f -exec chmod 644 {} \;

# Entrypoint
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
