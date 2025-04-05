sudo amazon-linux-extras install -y nginx1
sudo cp /var/www/html/index.html /usr/share/nginx/html/index.html
sudo systemctl restart nginx
chmod +x scripts/install_nginx.sh