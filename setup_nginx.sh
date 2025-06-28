#!/bin/bash

if ! command -v nginx >/dev/null 2>&1; then
  echo "Instalando Nginx..."
  yum update -y
  amazon-linux-extras enable nginx1
  yum install -y nginx
else
  echo "Nginx já está instalado"
fi
