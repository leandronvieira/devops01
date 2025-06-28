#!/bin/bash

# Verifica se o Nginx já está instalado
if ! command -v nginx >/dev/null 2>&1; then
  echo "Nginx não encontrado. Instalando com yum..."
  sudo yum update -y

  # Habilita o repositório do nginx (disponível via amazon-linux-extras)
  sudo amazon-linux-extras enable nginx1
  sudo yum clean metadata
  sudo yum install -y nginx
else
  echo "Nginx já está instalado. Nenhuma ação necessária."
fi
