#! /usr/bin/env tclsh

proc pkg package {
    upvar 1 prefix prefix

    puts $prefix[list $package [package require $package]]
}

proc group {name script} {
    upvar 1 prefix prefix

    puts "$prefix$name \{"

    set prevPrefix $prefix
    set prefix "    $prefix"
    try {
        uplevel 1 $script
    } finally {
        set prefix $prevPrefix
    }

    puts $prefix\}
}

proc main {} {
    set prefix {}

    pkg Tcl
    pkg critcl
    pkg tdom
    group Tcllib {
        pkg fileutil::magic::filetype
        group struct {
            pkg struct::list
            pkg struct::tree
        }
        pkg tcllibc
        pkg try
    }
    pkg tls
    pkg sqlite3    
}

main
