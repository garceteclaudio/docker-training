# Usar la imagen oficial de MySQL
FROM mysql:8.0

# Establecer variables de entorno
#ENV MYSQL_ROOT_PASSWORD=root
#ENV MYSQL_DATABASE=rootdb
#ENV MYSQL_USER=root
#ENV MYSQL_PASSWORD=root

# Copiar archivos SQL de inicialización personalizados (opcional)
# COPY ./init.sql /docker-entrypoint-initdb.d/

# Copiar configuración personalizada de MySQL (opcional)
# COPY ./my.cnf /etc/mysql/conf.d/

# Exponer el puerto de MySQL
EXPOSE 3306

# Comando de inicio (ya está definido en la imagen base)