#! /usr/bin/env tclsh
foreach package {Tcl tls fileutil::magic::filetype struct::list try} {
    puts [list $package [package require $package]]
}
