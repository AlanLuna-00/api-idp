#!/bin/sh
until curl -s $KEYCLOAK_URL; do
  echo "Esperando a que Keycloak esté disponible..."
  sleep 5
done
echo "Keycloak está listo, iniciando Terraform..."
