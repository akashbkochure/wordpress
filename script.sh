#!/bin/bash

# Change to the directory containing the website files
cd /var/www/www.akashbkochure.com

# Remove existing WordPress installation
sudo rm -rf wordpress
sudo git clone https://github.com/akashbkochure/wordpress.git

# Stop and start the Nginx service
sudo systemctl stop nginx
sudo systemctl start nginx

# Print a message at the end of the script
echo "Deployment completed."

# Exit the script
exit 0
