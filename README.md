# Tcl 8.6, Tcllib, and GCC on Alpine Linux for CircleCI

[![CircleCI build status](https://circleci.com/gh/dbohdan/circleci-tcl-gcc-autoconf.svg?style=shield)](https://circleci.com/gh/dbohdan/circleci-tcl-gcc-autoconf)
[![Docker Hub pull count](https://img.shields.io/docker/pulls/dbohdan1/circleci-tcl-gcc-autoconf.svg?style=flat)](https://hub.docker.com/r/dbohdan1/circleci-tcl-gcc-autoconf)

The Docker image built from this repository includes Tcl 8.6, Critcl, Tcllib
with tcllibc, tDOM, tclsqlite3 with the extensions FTS5 and JSON1, and TclTLS.
It  also comes with GCC, GNU make, and GNU Autoconf for building and testing
your  binary extensions.  It is suitable for testing C code unrelated to Tcl.
It has no SSH server.

You will find the complete package list in
[`.circleci/images/Dockerfile`](.circleci/images/Dockerfile).  For a use
example see
[`.circleci/config.yml` for tcl-duktape](https://github.com/dbohdan/tcl-duktape/blob/master/.circleci/config.yml).

## License

MIT.
