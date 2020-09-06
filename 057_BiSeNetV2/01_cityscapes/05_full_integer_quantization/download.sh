#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=13NINgVo90om_rxIxQ6WHDfVe8y3vARxa" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=13NINgVo90om_rxIxQ6WHDfVe8y3vARxa" -o resources.tar.gz
tar -zxvf resources.tar.gz
rm resources.tar.gz

echo Download finished.
