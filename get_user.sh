sudo podman exec -it bliss_mysql mysql -rroot -ppassword -e "select user,host,select_priv,insert_priv from mysql.user;"
