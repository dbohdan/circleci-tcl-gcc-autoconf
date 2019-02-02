# Tcl 8.6, Tcllib, and GCC on Alpine Linux for CircleCI

[![CircleCI](https://circleci.com/gh/dbohdan/circleci-tcl-gcc-autoconf.svg?style=svg)](https://circleci.com/gh/dbohdan/circleci-tcl-gcc-autoconf)
[![Docker Hub pulls](https://img.shields.io/docker/pulls/dbohdan1/circleci-tcl-gcc-autoconf.svg?style=flat)](https://hub.docker.com/r/dbohdan1/circleci-tcl-gcc-autoconf)

This Docker image includes GCC, GNU make, and GNU Autoconf for building and
testing your binary extensions.  It is also suitable for testing C code
unrelated to Tcl.  It has no SSH server.

See [`.circleci/images/Dockerfile`](.circleci/images/Dockerfile) for the
complete package list, the `test` job in
[`.circleci/config.yml`](.circleci/config.yml) for a use example.

## License

MIT.
