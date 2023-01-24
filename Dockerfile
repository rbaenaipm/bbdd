# Descargamos la imagen oficial
FROM mysql:latest
# Add a database
ENV MYSQL_DATABASE nodelogin
# Metemos los ficheros en la ruta docker-intrypoint-init.db para 
# que cuando se cree una imagen automaticamente se instalen las bbdd
EXPOSE 3306
COPY ./my-files/ /docker-entrypoint-initdb.d/