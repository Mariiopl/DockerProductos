FROM mysql:latest
# Define las variables de entorno necesarias
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=proyectospring
COPY init.sql /docker-entrypoint-initdb.d/
