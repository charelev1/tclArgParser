lappend auto_path [file dirname [info script]]

package require argparse


set freq_list [argparse::getFlagArgs "--freq"  argparse::argParse]
set gui       [argparse::getFlagArgs "--gui"   argparse::argParse]
set mft_path  [argparse::getFlagArgs "--path"  argparse::argParse]
set ui        [argparse::getFlagArgs "--ui"    argparse::argParse]
set timing    [argparse::getFlagArgs "--timing" argparse::argParse]
set unit      [argparse::getFlagArgs "--unit"  argparse::argParse]
set exact     [argparse::getFlagArgs "--exact" argparse::argParse]

puts "frequency list: $freq_list"
puts "gui: $gui"
puts "mft path: $mft_path"
puts "ui: $ui"
puts "timing: $timing"
puts "unit: $unit"
puts "exact: $exact"
