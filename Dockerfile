ARG UBUNTU_VERSION=14.04
FROM ubuntu:$UBUNTU_VERSION
ARG PYTHON_VERSION=2.7.6
ARG var1
ENV var=$var1
RUN echo $var
# Install dependencies
# PIP - openssl version > 1.1 may be an issue (try older ubuntu images)
RUN apt-get update \
  && apt-get install -y wget gcc make openssl libffi-dev libgdbm-dev libsqlite3-dev libssl-dev zlib1g-dev \
  && apt-get clean \
   git \
    python \
    python-pip \
    python-dev \
    libpcre3 \
    libpcre3-dev \
    libtidy-0.99-0 \
    libffi-dev \
    libpq-dev \
    libcurl4-gnutls-dev \
    libxml2-dev \
    libxslt1-dev \
    libmysqlclient-dev \
    libmemcached-dev \
    libjpeg-dev \
    libfreetype6 \
    libfreetype6-dev \
    zlib1g-dev \
    imagemagick \
    supervisor \
    yui-compressor \
    tzdata \
    python-pip
# RUN pip install -U pip
# RUN pip install --upgrade pip==20.3.4

# Fixes setuptools 20.7.0 error
# RUN pip install --upgrade setuptools

WORKDIR /tmp/

# Build Python from source
RUN wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz \
  && tar --extract -f Python-$PYTHON_VERSION.tgz \
  && cd ./Python-$PYTHON_VERSION/ \
  && ./configure --enable-optimizations --prefix=/usr/local \
  && make && make install \
  && cd ../ \
  && rm -r ./Python-$PYTHON_VERSION*

ADD . /tmp

# RUN apt get python-pip
# RUN pip install pip

RUN python --version
# RUN python conf.py

ENTRYPOINT [ "python" ]

EXPOSE 80

CMD ["supervisord", "-n"]
