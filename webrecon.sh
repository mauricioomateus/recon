  GNU nano 5.9                                                  webrecon.sh                                                           
#!/bin/bash

# $2 = passe uma wordlist
# $1 = passe um dominio
for word in $(cat $2)
do
resposta=$(curl -s -H "User-Agent: Other User Agent" -o /dev/null -w "%{http_code}" $1/$word/)

if [ $resposta == "200" ]
then
echo "Diretorio encontrado: $1/$word/"

fi
done

