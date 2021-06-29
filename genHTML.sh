#!/bin/sh

# replace ip in /etc/hosts for domain jwtowerorg.github.io 

#run
wget -r -l 7 -p -nc -E https://jwtowerorg.github.io
cd jwtowerorg.github.io
find . -type f -print0 | xargs -0 sed -i 's/http:\/\/jw/https:\/\/jw/g'
git commit -a -m "meow"
git push origin master
