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

RUN apk update
RUN apk add --no-cache ${DEPS}

RUN pip install --upgrade wheel pip setuptools

COPY entry_point.sh /opt/bin/entry_point.sh
COPY bundle /bundle

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN webdrivermanager chrome

ENTRYPOINT [ "/opt/bin/entry_point.sh" ]
