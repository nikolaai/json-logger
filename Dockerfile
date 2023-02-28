FROM alpine:3.14

RUN apk update && apk add --no-cache bash

CMD while true; do \
  logger -s -t "" '{"message": "This is a dummy JSON log message", "timestamp": "'$(date -u +%Y-%m-%dT%H:%M:%SZ)'"}'; \
  sleep 1; \
done
