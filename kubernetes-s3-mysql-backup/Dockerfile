FROM alpine:3.19

RUN apk update && \
    apk add --no-cache mysql-client bash curl aws-cli

COPY perform-backup.sh /perform-backup.sh
RUN chmod +x /perform-backup.sh

CMD ["sh", "/perform-backup.sh"]

