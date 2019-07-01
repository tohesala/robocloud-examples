FROM python:3.7-alpine3.9

ENV SCREEN_WIDTH 1280
ENV SCREEN_HEIGHT 720
ENV SCREEN_DEPTH 16
ENV DEPS="\
    bash \
    chromium \
    chromium-chromedriver \
    udev \
    xvfb \
"

COPY entry_point.sh /opt/bin/entry_point.sh

COPY bundle /bundle

RUN apk update
RUN apk add --no-cache ${DEPS}

ENTRYPOINT [ "/opt/bin/entry_point.sh" ]
