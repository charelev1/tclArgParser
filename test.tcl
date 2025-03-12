lappend auto_path [file dirname [info script]]

package require argparse


set freq_list [getFlagArgs "--freq"  argParse]
set gui       [getFlagArgs "--gui"   argParse]
set mft_path  [getFlagArgs "--path"  argParse]
set ui        [getFlagArgs "--ui"    argParse]
set timing    [getFlagArgs "--timing" argParse]
set unit      [getFlagArgs "--unit"  argParse]
set exact     [getFlagArgs "--exact" argParse]


puts "frequency list: $freq_list"
puts "gui: $gui"
puts "mft path: $mft_path"
puts "ui: $ui"
puts "timing: $timing"
puts "unit: $unit"
puts "exact: $exact"
