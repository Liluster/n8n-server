FROM n8nio/n8n:latest

# Copy config file to n8n folder
COPY config.json /home/node/.n8n/config.json

RUN ls -la /home/node/.n8n/
