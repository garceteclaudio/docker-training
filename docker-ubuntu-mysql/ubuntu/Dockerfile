FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    bash \
    ca-certificates \
    curl \
    wget \
    less \
    vim \
    net-tools \
    iproute2 \
    dnsutils \
    mysql-client \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Crear usuario no-root opcional
RUN useradd -ms /bin/bash devuser

USER devuser
WORKDIR /home/devuser

# Mantener el contenedor en ejecución por defecto (se puede sobrescribir con docker exec -it)
CMD ["sleep", "infinity"]
