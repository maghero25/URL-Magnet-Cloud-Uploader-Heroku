FROM alpine:latest
RUN apk update
RUN apk add curl
RUN apk add unrar
#    apk add unzip -y  && \
#    curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip && \
#    unzip rclone-current-linux-amd64.zip && \
#    cp /rclone-*-linux-amd64/rclone /usr/bin/ && \
#    chown root:root /usr/bin/rclone && \
 #   chmod 755 /usr/bin/rclone && \
#    apk add aria2 -y && \
 #   apk add wget -y && \
#    apk add pip -y # && \
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
