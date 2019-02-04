# Tcl 8.6, Tcllib, and GCC on Alpine Linux for CircleCI

[![CircleCI build status](https://circleci.com/gh/dbohdan/circleci-tcl-gcc-autoconf.svg?style=svg)](https://circleci.com/gh/dbohdan/circleci-tcl-gcc-autoconf)
[![Docker Hub pull count](https://img.shields.io/docker/pulls/dbohdan1/circleci-tcl-gcc-autoconf.svg?style=flat)](https://hub.docker.com/r/dbohdan1/circleci-tcl-gcc-autoconf)

The Docker image built from this repository includes Tcl 8.6, Tcllib, Critcl,
and TclTLS.  It also comes with GCC, GNU make, and GNU Autoconf for building
and testing your binary extensions.  It is suitable for testing C code
unrelated to Tcl.  It has no SSH server.

See [`.circleci/images/Dockerfile`](.circleci/images/Dockerfile) for the
complete package list, the `test` job in
[`.circleci/config.yml`](.circleci/config.yml) for a use example.

## License

MIT.
