FROM n8nio/n8n:latest

# Cambiar al usuario root temporalmente
USER root

# Instalar dependencias si es necesario
RUN apk add --no-cache tini

# Volver al usuario n8n
USER node

# Establecer directorio de trabajo
WORKDIR /home/node

# Variables de entorno
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_HOST=0.0.0.0

# Exponer el puerto
EXPOSE 5678

# Usar tini como init y ejecutar n8n
ENTRYPOINT ["tini", "--", "n8n"]
CMD ["start"]
