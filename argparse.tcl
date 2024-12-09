proc argParse {} \
{
    set flags     [list]
    set flag_args [list [list]]
    set cnt -1 
    
    foreach arg $::argv {
        if {[regexp {^--} $arg]} {
            lappend flags $arg
            lappend flag_args [list]
            incr cnt               
        } else {
            if {$cnt >= 0} {
                set tmp [lindex $flag_args $cnt]
                lappend tmp $arg
                lset flag_args $cnt $tmp
            } else {
                error "Argument '$arg' encountered without a preceding flag"
            }
        }
    }
    return [list $flags $flag_args]
}

proc getFlagArgs {in_flag parseFunc} \
{
    set flags     [lindex [$parseFunc] 0]
    set flag_args [lindex [$parseFunc] 1]

    for {set i 0} {$i < [llength $flags]} {incr i} {
        set test_flag [lindex $flags $i]
        set test_args [lindex $flag_args $i]
    
        if {$in_flag eq $test_flag} {
            if {[llength $test_args] eq 0} {
              return exists
            } else {
              return $test_args
            }
        }
    }
  return noexists
}

