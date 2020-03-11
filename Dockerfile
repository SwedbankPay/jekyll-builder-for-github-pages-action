FROM jekyll/builder

RUN apk add --no-cache --no-progress curl
RUN apt-get update && apt-get install -y libfontconfig

COPY lib/                 /usr/local/lib
COPY action-entrypoint.sh /action-entrypoint.sh

ENTRYPOINT ["/action-entrypoint.sh"]
