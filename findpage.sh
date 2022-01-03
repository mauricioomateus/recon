#!/bin/bash

if [$1 == ""]
then

echo "==========================================================="
echo "===== Modo de uso: ./findpage dominio.com.br extensao ====="
echo "==========================================================="

else
lynx --dump "https://www.google.com/search?q=site:"$1"+ext:"$2"" | grep ".$2" | cut -d "=" -f2 | egrep -v "site|google" | sed s'/...$>
fi
