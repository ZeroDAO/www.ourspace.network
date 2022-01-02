#!/usr/bin/env sh

set -e

cd web

echo 'ourspace.network' > CNAME

git init

git add -A

git commit -m 'deploy'

git push -f git@github.com:ZeroDAO/www.ourspace.network.git master:gh-pages

cd -
