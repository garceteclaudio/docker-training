### Crear archivo .env:

MYSQL_ROOT_PASSWORD=rootpassword
MYSQL_DATABASE=root_db
MYSQL_USER=root_user
MYSQL_PASSWORD=root_password

### Construir la imagen:

docker build -t mi-imagen-mysql .

· el punto significa, usa este directorio como contexto de build
-t asignar nombre

### Ejecutar el contenedor:

docker run -d -p 3306:3306 --name mysql-container mi-imagen-mysql

### Ejecutar el contenedor con archivo .env:

docker run -d --env-file .env -p 3306:3306 --name mysql-container -v "C:\docker\mysql\docker-file-mysql-server-data:/var/lib/mysql" mi-imagen-mysql