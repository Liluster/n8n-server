FROM n8nio/n8n:latest

USER root
RUN apk update && apk add socat
USER node

COPY custom-entrypoint.sh /home/node/custom-entrypoint.sh
RUN chmod +x /home/node/custom-entrypoint.sh

ENTRYPOINT ["/home/node/custom-entrypoint.sh"]
