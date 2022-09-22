FROM docker.io/library/mariadb
COPY free_web_db /free_web_db/
#COPY free_web_db/user.sql /docker-entrypoint-initdb.d/
#COPY free_web_db/free_smart_win.sql /docker-entrypoint-initdb.d/
#COPY free_web_db/recharge.sql /docker-entrypoint-initdb.d/

# MySQL
#RUN mysql -uroot -ppassword
#RUN sleep 5
#RUN mysql -u root -ppassword -e "create user 'nextwin'@'localhost' identified by '87654321';"

#RUN mysql -uroot -ppassword
#RUN mysql -uroot -ppassword free_smart_win < /free_web_db/free_smart_win.sql

RUN \
  cp /free_web_db/user.sql /docker-entrypoint-initdb.d/ && \
  cp /free_web_db/free_smart_win.sql /docker-entrypoint-initdb.d/ && \
  cp /free_web_db/recharge.sql /docker-entrypoint-initdb.d/ && \
  rm -rf /free_web_db

CMD ["mysqld"]
