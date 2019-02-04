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

# Remove sources.
RUN rm -rf critcl-3.1.17.tar.gz \
           critcl-3.1.17/ \
           tcllib-1-19.tar.gz \
           tcllib-tcllib-1-19/

CMD tclsh
