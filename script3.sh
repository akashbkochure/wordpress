#!/bin/bash

# Change to the directory containing the website files
cd /var/www/www.akashbkochure.com

# Pull the latest changes in code
sudo git pull

# Reload Nginx
sudo systemctl reload nginx

# Renew SSL certificate Test & Renew
sudo certbot renew --dry-run
sudo certbot renew

# Print a message at the end of the script
echo "Deployment completed."

# Exit the script
exit 0
