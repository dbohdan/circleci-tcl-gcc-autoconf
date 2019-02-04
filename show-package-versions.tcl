#! /usr/bin/env tclsh
foreach package {
    Tcl

    critcl

    fileutil::magic::filetype
    struct::list
    tcllibc
    try

    tls
} {
    puts [list $package [package require $package]]
}
