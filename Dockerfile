FROM n8nio/n8n:latest

# Copy config file to n8n folder
COPY config.js /home/node/.n8n/config.js

RUN ls -la /home/node/.n8n/
