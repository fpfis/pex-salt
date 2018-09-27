FROM alpine:3.7
# Install required libs
RUN apk add --no-cache py-pip && pip install --no-cache-dir --upgrade pip
RUN apk add --no-cache --virtual .run-deps git libffi libgit2 libssh2 mariadb-client-libs gcc
RUN apk del --no-cache libressl-dev && apk add --no-cache openssl-dev g++ python-dev &&\
    pip --no-cache-dir install pycrypto && \
    apk del --no-cache openssl-dev g++ && apk add --no-cache libressl-dev && \
    apk add --no-cache --virtual .build-deps python-dev g++ libffi-dev libssh2-dev libgit2-dev musl-dev mariadb-dev  && \
    pip --no-cache-dir install 'tornado<5.0,>=4.2.1' 'pygit2==0.25' MySQL-python python-gnupg cherrypy salt && \
    apk del --no-cache .build-deps python-dev
