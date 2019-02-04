FROM alpine:3.9

RUN apk update

# CircleCI requirements, except for an SSH server.
RUN apk add \
        ca-certificates \
        git \
        gzip \
        tar

# Packages for C development.
RUN apk add \
        autoconf \
        automake \
        bash \
        curl \
        fossil \
        gcc \
        libc-dev \
        make \
        openssl-dev

WORKDIR /root
ENV USER root

# Tcl.
RUN wget -O tcl-core-8-6-9.tar.gz \
         https://github.com/tcltk/tcl/archive/core-8-6-9.tar.gz \
    && tar xf tcl-core-8-6-9.tar.gz \
    && cd tcl-core-8-6-9/unix/ \
    && ./configure --prefix=/usr \
    && make install \
    && cd ..
RUN ln -s /usr/bin/tclsh8.6 /usr/bin/tclsh

# Tcllib.
RUN wget -O tcllib-1-19.tar.gz \
         https://github.com/tcltk/tcllib/archive/tcllib-1-19.tar.gz \
    && tar xf tcllib-1-19.tar.gz \
    && cd tcllib-tcllib-1-19/ \
    && ./configure --prefix=/usr \
    && make install \
    && cd ..

# Critcl.
RUN wget -O critcl-3.1.17.tar.gz \
         https://github.com/andreas-kupries/critcl/archive/3.1.17.tar.gz \
    && tar xf critcl-3.1.17.tar.gz \
    && cd critcl-3.1.17/ \
    && tclsh build.tcl install \
    && cd ..

# Tcllibc.
RUN cd tcllib-tcllib-1-19/ \
    && make critcl \
    && cp -r modules/tcllibc /usr/lib/tcllib1.19/ \
    && cd ..

# tclsqlite3.
RUN wget -O sqlite-autoconf-3260000.tar.gz \
         https://sqlite.org/2018/sqlite-autoconf-3260000.tar.gz \
    && tar xf sqlite-autoconf-3260000.tar.gz \
    && cd sqlite-autoconf-3260000/tea/ \
    && env CFLAGS='-DSQLITE_ENABLE_FTS5 -DSQLITE_ENABLE_JSON1' \
       ./configure --prefix=/usr \
    && make install \
    && cd ../..

# TclTLS.
RUN wget -O tcltls-1.7.16.tar.gz \
         https://core.tcl.tk/tcltls/uv/tcltls-1.7.16.tar.gz \
    && tar xf tcltls-1.7.16.tar.gz \
    && cd tcltls-1.7.16/ \
    && ./configure --prefix=/usr \
    && make install \
    && cd ..

# Remove sources.
RUN rm -rf critcl-3.1.17.tar.gz \
           critcl-3.1.17/ \
           tcl-core-8-6-9.tar.gz \
           tcl-core-8-6-9/ \
           tcllib-1-19.tar.gz \
           tcllib-tcllib-1-19/ \
           tcltls-1.7.16.tar.gz \
           tcltls-1.7.16/ \
           sqlite-autoconf-3260000.tar.gz \
           sqlite-autoconf-3260000/

CMD tclsh
