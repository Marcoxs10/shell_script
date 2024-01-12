#!/bin/bash

diretorio_projetos="/var/www/html/"

cd $diretorio_projetos

for projeto in *; do
    if [ -d "$projeto" ]; then
        echo "Atualizando $projeto..."
        cd "$projeto" && git pull origin main
        cd ..
        echo "-----------------------------"
    fi
done

echo "Atualização concluída para todos os projetos."
