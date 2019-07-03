FROM python:3.7-alpine3.9

ENV DEPS="\
    bash \
    chromium \
    chromium-chromedriver \
"

RUN apk update
RUN apk add --no-cache ${DEPS}

RUN pip install --upgrade wheel pip setuptools

COPY entry_point.sh /opt/bin/entry_point.sh
COPY bundle /bundle

RUN pip install -r /bundle/requirements.txt

ENTRYPOINT [ "/opt/bin/entry_point.sh" ]
