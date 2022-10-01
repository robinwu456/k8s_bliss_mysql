FROM docker.io/library/mariadb
COPY free_web_db /free_web_db/

RUN \
  cp /free_web_db/user.sql /docker-entrypoint-initdb.d/ && \
  cp /free_web_db/free_smart_win.sql /docker-entrypoint-initdb.d/ && \
  cp /free_web_db/recharge.sql /docker-entrypoint-initdb.d/ && \
  rm -rf /free_web_db

CMD ["mysqld"]
