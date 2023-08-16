cd /var/www/www.akashbkochure.com
sudo rm -rf wordpress
sudo git clone https://github.com/akashbkochure/wordpress.git
sudo systemctl stop nginx
sudo systemctl start nginx
