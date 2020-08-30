FROM alpine:latest

RUN apk add --no-cache \ 
  docker-cli \
  git

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
