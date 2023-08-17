# WordPress Deployment on LEMP Stack with Nginx (as a web-server) and Certbot SSL (for secure encryption of your website) Using GitHub Actions & DNS mapping with GoDaddy Domain Name :

Here is the set up of an automated deployment process for a WordPress website using Nginx as the web server, LEMP (Linux, Nginx, MySQL, PHP) stack, and GitHub-Actions as the CI/CD automation tool & DNS mapping using GoDaddy Domain Name. The deployment process should follow security best practices and ensure optimal performance of the website.

# Launch one AWS ubuntu 22.04 EC2 instance using default VPC and subnet. PublicIP is enabled. Create/Attach key-pair. Take Instance-Type as t2.micro family.

# Create Security Group. wordpress-sg (Port Open- ssh:22; http:80; https:443; Mysql-Aurora:3306)

# ***** Create "A" records in Your Doamin in my case I have GoDaddy Domain. (Add PublicIp of your EC2 Instance) *****

# SSH or login into the ec2 instance & Run the following Commands:

sudo git clone https://github.com/akashbkochure/wordpress.git

sudo mv /home/ubuntu/wordpress/lemp-wordpress.sh .

sudo rm -rf wordpress/

sudo chmod +x lemp-wordpress.sh  && sudo ./lemp-wordpress.sh

# ***** In git repo add private-ssh key into secrets of repo & add PublicIp to your ./github/workflow/main.yml. Make some required changes in configuration files like index.php or wp-login.php and commit the changes will automatically deployed on your prod server / provided EC2 Instance using Github Actions *****

# Assignment is Successfully Completed.
