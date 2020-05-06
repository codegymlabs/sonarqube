FROM sonarqube

RUN apk update && \
  apk add jq curl && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*
