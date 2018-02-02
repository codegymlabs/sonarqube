FROM sonarqube:alpine

RUN apk update && \
  apk add jq curl && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

RUN wget $(curl -s https://api.github.com/repos/kogitant/sonar-slack-notifier-plugin/releases/latest \
    | jq -r ".assets[] \
    | select(.name | test(\"${spruce_type}\")) \
    | .browser_download_url") \
  -P /opt/sonarqube/extensions/plugins/plugins/sonar-slack-notifier-plugin/
