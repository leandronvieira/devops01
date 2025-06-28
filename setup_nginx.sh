sudo amazon-linux-extras install -y nginx1
sudo cp /var/www/html/index.html /usr/share/nginx/html/index.html
#!/bin/bash

# Verifica se nginx está instalado e instala apenas se necessário
if ! command -v nginx >/dev/null 2>&1; then
  echo "Nginx não encontrado. Instalando..."
  apt-get update -y
  apt-get install nginx -y
else
  echo "Nginx já está instalado. Nenhuma ação necessária."
fi
