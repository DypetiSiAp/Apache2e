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

sudo vim  /etc/apache2/sites-available/dypetisiap.conf

sudo vim  /etc/apache2/sites-available/dypetisiap.com.conf

cp ConfCopiar.txt /etc/apache2/sites-available/dypetisiap.com.conf

openssl genrsa -out dypetisiap.com.key 1024


openssl req -new -key dypetisiap.com.key -out dypetisiap.schema.crt


openssl x509 -req -days 365 -in dypetisiap.schema.crt -signkey dypetisiap.com.key  -out  dypetisiap.schema.crt 

cd /etc/apache2/sites-avariable/

vim dypetisiap-ssl.com.conf

