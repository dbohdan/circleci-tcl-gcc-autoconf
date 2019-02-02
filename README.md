# Tcl 8.6, Tcllib, and GCC on Alpine Linux for CircleCI

(Dockerhub)

This Docker image includes GCC, GNU make, and GNU Autoconf for building and
testing your binary extensions.  It is also suitable for testing C code
unrelated to Tcl.  It has no SSH server.

See [`.circleci/images/Dockerfile`](.circleci/images/Dockerfile) for the
complete package list, [`.circleci/config.yml`](.circleci/config.yml) for a use
example.

## License

MIT.
