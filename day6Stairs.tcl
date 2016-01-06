#! /bin/sh
#
# The following line restarts using tclsh \
   exec tclsh "$0" ${1+"$@"}

;#set width [gets stdin]
set width 6
set stairCase {#}

for {set i 0} { $i < $width } { incr i } {
  puts [format "%+${width}s" "${stairCase}"]
  append stairCase {#}
}
