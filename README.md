## Docker image commands

Download docker images from the internet
```bash
docker pull {image_name}
```
Examples:

```bash
docker pull mysql:latest
docker pull mongo
docker pull jenkins/jenkins
docker run --add-host="localhost:192.168.x.x" -p 8080:8080 -p 50000:50000 --name jenkins -d -v /Users/myuserr/Desktop/jenkins/jenkins_home:/var/jenkins_home jenkins/jenkins

        		//nombre contenedor
docker exec -it jenkins bash


docker logs -f nombreContainer
```

List Docker images

```bash
docker images
```

Remove one or more images

```bash
docker rmi {image_name}
```

## Docker container commands

Create and run a new container from an image

```bash
docker run -d -p 27017:27017 mongo
```

Windows powershell
```bash
docker run -d `
  --name contenedor_mysql_server `
  -e MYSQL_ROOT_PASSWORD=MiPassSegura123! `
  -e MYSQL_DATABASE=escuela `
  -e MYSQL_USER=myuser `
  -e MYSQL_PASSWORD=myuserpass `
  -p 3306:3306 `
  -v "C:\docker\mysql\data:/var/lib/mysql" `
  mysql:latest
```
Linux / macOS (Bash/Zsh)
```bash
docker run -d \
  --name contenedor_mysql_server \
  -e MYSQL_ROOT_PASSWORD=MiPassSegura123! \
  -e MYSQL_DATABASE=escuela \
  -e MYSQL_USER=myuser \
  -e MYSQL_PASSWORD=myuserpass \
  -p 3306:3306 \
  -v $HOME/docker/mysql/data:/var/lib/mysql \
  mysql:latest
```

List Docker containers that are currently running.

```bash
docker ps
```

List all containers (running + stopped + exited)

```bash
docker ps -a
```

Docker start command will start any stopped container.

```bash
docker start {containerID}
```

Stop one or more running containers

```bash
docker stop {containerID}
```

Remove one or more containers

```bash
docker rm {containerID}
```

## Docker compose commands

```bash
docker-compose up --build
```

This command starts the services defined in your docker-compose.yml file AND rebuilds the images before starting them.
1. Reads your docker-compose.yml

2. For each service:

    - If the service has build: . or a Dockerfile → it rebuilds the image

    - If the service uses only image: → it does NOT rebuild anything

3. After building the images, it starts the containers

4. If containers already existed, they are replaced by the newly built ones

### When should you use --build?

Use it when:

- You modified your Dockerfile

- You changed your project’s code

- You updated dependencies

- You changed files that get copied into the image

- You want to force a rebuild

```bash
docker-compose up
```
