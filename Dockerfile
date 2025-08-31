FROM n8nio/n8n:latest

# Temp: shell script：
# 1. Print start
# 2. Ptrint env variables
# 3. Print End
# 4. Sleep for 300 sec
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["echo '--- Start: Environment Variables ---' && printenv | sort && echo '--- End: Environment Variables ---' && sleep 300"]
