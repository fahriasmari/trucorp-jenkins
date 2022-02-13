FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=root_pw
ENV MYSQL_DATABASE=Trucorp

COPY ./trucorp-db.sql ./docker-entrypoint-initdb.d/trucorp-db.sql

EXPOSE 3306 33060