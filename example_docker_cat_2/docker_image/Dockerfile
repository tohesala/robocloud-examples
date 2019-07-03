FROM python:3.7-alpine3.9

ENV DEPS="\
    bash \
    chromium \
    chromium-chromedriver \
"

RUN apk update
RUN apk add --no-cache ${DEPS}

COPY entry_point.sh /opt/bin/entry_point.sh
ENTRYPOINT [ "/opt/bin/entry_point.sh" ]
