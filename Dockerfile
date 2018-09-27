FROM ubuntu:bionic 
# Install required libs
RUN apt-get update && \
    apt-get install --no-install-recommends -y git libffi6 libgit2-26 libssh2-1 libmariadbclient18 python-pkg-resources && \
    apt-get install --no-install-recommends -y python-setuptools python-pip python-dev libffi-dev libgit2-dev libmariadbd-dev libssh2-1-dev gcc && \
    pip --no-cache-dir install 'tornado<5.0,>=4.2.1' 'pygit2==0.26' MySQL-python python-gnupg cherrypy salt && \
    apt-get autoremove -y  python-setuptools python-dev libffi-dev libgit2-dev libmariadbd-dev libssh2-1-dev gcc --purge && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
