FROM alpine:latest
WORKDIR /app
RUN apk add --no-cache curl jq bash
ADD https://raw.githubusercontent.com/fieu/discord.sh/refs/heads/master/discord.sh /app
COPY monitor.sh .
RUN chmod +x /app/discord.sh /app/monitor.sh
CMD ["/app/monitor.sh"]
