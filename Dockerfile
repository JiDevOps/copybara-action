FROM alpine:latest

RUN apk add --no-cache \ 
  docker-cli \
  git

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
