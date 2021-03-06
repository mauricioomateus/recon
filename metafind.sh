#!/bin/bash

url=$1 

lynx --dump "https://google.com.br/search?&q=site:$url+ext:pdf" | grep ".pdf" | cut -d "=" -f2 | egrep -v "site|google" | sed s'/...$//'g>
for pdf in $(cat arquivos.txt);do wget -q $pdf;done
exiftool *.pdf
rm -rf *.pdf
rm -rf arquivos.txt
echo "==================================="
echo "============= Finish =============="
echo "==================================="
