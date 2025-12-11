### Crear archivo .env

MYSQL_ROOT_PASSWORD=MiPassSegura123!
MYSQL_DATABASE=escuela_db
MYSQL_USER=usuario
MYSQL_PASSWORD=usuario123
MYSQL_HOST_PORT=3306

### Arrancar el contenedor

docker compose up -d

Esto va a:
-Crear el volumen mysql_data
-Levantar MySQL 8.0
-Usar las variables del .env
-Asignar el nombre mysql_server_container_compose

### Borrar contenedor + volumen + TODO lo persistente

docker compose down -v