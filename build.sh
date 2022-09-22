#!/bin/bash

sudo podman build --tls-verify=false -t quay.io/robinwu456/bliss_mysql .
[ $? != "0" ] && exit 1

#sudo podman stop bliss_mysql
#sudo podman run --rm --name bliss_mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -d quay.io/robinwu456/bliss_mysql

sudo podman push --tls-verify=false quay.io/robinwu456/bliss_mysql
