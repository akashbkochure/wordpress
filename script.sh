ssh -i ubuntu@52.91.181.6

cd /var/www/www.akashbkochure.com
sudo rm -rf wordpress

sudo systemctl stop nginx
sudo systemctl start nginx
