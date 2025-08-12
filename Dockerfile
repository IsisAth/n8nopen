FROM n8nio/n8n:latest

# Exponer el puerto
EXPOSE 5678

# Variables de entorno por defecto
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Comando de inicio
CMD ["n8n", "start"]
