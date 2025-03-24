docker run -d \
  --name some-mysql \
  -e MYSQL_ROOT_PASSWORD=toor \
  -e MYSQL_DATABASE=mydb \
  -v $PWD/database.sql:/docker-entrypoint-initdb.d/database.sql \
  -p 3306:3306 \
  --cap-add SYS_NICE \
  mysql:8.0 --default-authentication-plugin=mysql_native_password


docker run --name myadmin -d --link some-mysql:db -p 8085:80 phpmyadmin/phpmyadmin
