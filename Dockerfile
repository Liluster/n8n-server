FROM n8nio/n8n:1.45.1

# 1. 切換到 root 使用者，以便擁有最高權限
USER root

# 2. 以 root 身份更新套件庫並安裝 socat
RUN apk update && apk add socat

# 3. 以 root 身份將自訂腳本複製進去
COPY custom-entrypoint.sh /home/node/custom-entrypoint.sh

# 4. 以 root 身份賦予該腳本執行的權限
RUN chmod +x /home/node/custom-entrypoint.sh

# 5. 需要高權限的設定都已完成，現在切換回低權限的 node 使用者來執行程式
USER node

# 6. 將容器的啟動指令設定為我們自訂的腳本 (此時會以 node 使用者身份執行)
ENTRYPOINT ["/home/node/custom-entrypoint.sh"]
