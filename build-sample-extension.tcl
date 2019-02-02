#! /usr/bin/env tclsh

package require tcltest 2
package require try

proc run args {
    exec -- {*}$args >@ stdout 2>@ stderr
}

proc clone {url filename dir version} {
    run fossil clone $url $filename

    file mkdir $dir
    cd $dir

    run fossil open ../$filename
    run fossil checkout $version

    cd ..
}

proc main {} {
    try {
        cd [tcltest::makeDirectory ext]

        clone https://core.tcl.tk/sampleextension \
              sampleextension.fossil \
              sampleextension \
              93bad0be42

        clone https://core.tcl.tk/tclconfig \
              tclconfig.fossil \
              tclconfig \
              cbe95d1d87

        cd sampleextension
        file copy ../tclconfig .

        run ./configure
        run make test
    } finally {
        tcltest::cleanupTests
    }
}

main
