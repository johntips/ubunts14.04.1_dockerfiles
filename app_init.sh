#!/bin/bash

if [ $# -ne 1 ]; then
 echo "You must specify branch name"
 exit 1 
fi

BRANCH_NAME=$1

cd /var/www/html && git clone -b $BRANCH_NAME --depth 1 git@github.com:teiyuueki/docker_test_app_html.git
