#!/bin/bash

# Change to the directory containing the website files
cd /var/www/www.akashbkochure.com

# Remove existing WordPress installation
sudo rm -rf wordpress
sudo git clone https://github.com/akashbkochure/wordpress.git
cd wordpress

# Configure WordPress
sudo rm -rf wp-config.php
sudo cp wp-config-sample.php wp-config.php

# Create Nginx configuration
sudo tee /etc/nginx/sites-available/www.akashbkochure.com > /dev/null <<EOT
server {
    listen 80;
    server_name www.akashbkochure.com;

    root /var/www/www.akashbkochure.com/wordpress;
    index index.php index.html index.htm;

    location ^~ /.well-known/acme-challenge/ {
        allow all;
        root /var/www/www.akashbkochure.com/wordpress;
    }

    location / {
        try_files \$uri \$uri/ /index.php?\$args;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.1-fpm.sock;
    }

    location ~ /\.ht {
        deny all;
    }
}
EOT

# Test Nginx configuration
sudo nginx -t

# Reload Nginx
sudo systemctl reload nginx

# Stop and start the Nginx service
sudo systemctl stop nginx
sudo systemctl start nginx

# Print a message at the end of the script
echo "Deployment completed."

# Exit the script
exit 0
