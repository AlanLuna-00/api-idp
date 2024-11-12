FROM alpine:3.18

# Instala Terraform y dependencias necesarias
RUN apk add --no-cache curl bash unzip && \
    curl -O https://releases.hashicorp.com/terraform/1.5.0/terraform_1.5.0_linux_amd64.zip && \
    unzip terraform_1.5.0_linux_amd64.zip -d /usr/bin && \
    rm terraform_1.5.0_linux_amd64.zip

# Copia archivos de configuración de Terraform y script de espera
COPY . /app
WORKDIR /app

# Da permisos de ejecución al script
RUN chmod +x wait-for-keycloak.sh
