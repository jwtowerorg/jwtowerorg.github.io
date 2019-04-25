#!/bin/sh

# replace ip in /etc/hosts for domain jw-tower.org 

#run
wget -r -l 7 -p -nc -E http://jw-tower.org
cd jw-tower.org
find . -type f -print0 | xargs -0 sed -i 's/http:\/\/jw/https:\/\/jw/g'
