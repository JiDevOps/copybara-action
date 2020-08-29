FROM alpine:latest

RUN apk get --no-cache \ 
  docker-cli \
  git

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
