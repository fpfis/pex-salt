FROM python:3.4-alpine
# Install required libs
RUN apk add --no-cache --virtual .run-deps libffi libgit2 libssh2 mariadb-common gcc
RUN apk del libressl-dev && apk add --no-cache openssl-dev g++ && \
    pip --no-cache-dir install pycrypto && \
    apk del openssl-dev g++ && apk add --no-cache libressl-dev && \
    apk add --no-cache --virtual .build-deps g++ libffi-dev libssh2-dev libgit2-dev musl-dev mariadb-dev  && \
    pip --no-cache-dir install pygit2 mysqlclient python-gnupg salt && \
    apk del .build-deps