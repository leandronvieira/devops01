#!/bin/bash

# Verifica se nginx está instalado e instala apenas se necessário
if ! command -v nginx >/dev/null 2>&1; then
  echo "Nginx não encontrado. Instalando..."
  dnf install -y nginx
else
  echo "Nginx já está instalado. Nenhuma ação necessária."
fi

