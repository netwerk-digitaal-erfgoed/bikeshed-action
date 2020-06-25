FROM python:3.7-alpine

RUN apk add --no-cache --virtual .build-deps g++ gcc libxml2-dev libxslt-dev \
    && pip install bikeshed \
    && apk del .build-deps \
    && apk add --no-cache libxslt git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
