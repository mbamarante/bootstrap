#!/bin/bash

composer create-project --prefer-dist cakephp/app $1
git clone https://github.com/mbamarante/bootstrap.git $1
sed -i -e"s/^server_name app.local/server_name $1.local/" $1/config/nginx/app.local
