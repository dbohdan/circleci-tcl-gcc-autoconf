FROM alpine:3.9

RUN apk update

# CircleCI requirements, except for an SSH server.
RUN apk add \
        ca-certificates \
        git \
        gzip \
        tar

# Packages for Tcl and C development.
RUN apk add \
        autoconf \
        automake \
        bash \
        curl \
        fossil \
        gcc \
        libc-dev \
        make \
        tcl \
        tcl-dev \
        tcl-tls


WORKDIR /root
ENV USER root

# Tcllib.
RUN wget -O tcllib-1-19.tar.gz \
         https://github.com/tcltk/tcllib/archive/tcllib-1-19.tar.gz \
    && tar xf tcllib-1-19.tar.gz \
    && cd tcllib-tcllib-1-19/ \
    && ./configure --prefix=/usr \
    && make install \
    && cd .. \
    && rm -rf tcllib-1-19.tar.gz tcllib-tcllib-1-19/

CMD tclsh
