sudo apt install apache2
sudo apt install ufw -y
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw status
sudo systemctl status apache2

# Para iniciar el servidor web
sudo systemctl start apache2

sudo mkdir  /var/www/dypetisiap.com
sudo chmod -R 755   /var/www/dypetisiap.com

sudo vim   /var/www/dypetisiap.com/index.html

