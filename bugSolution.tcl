proc goodproc {x} {
  if {[expr {$x > 10}]} {
    return 1
  }
  return 0
}
puts [goodproc 20]
puts [goodproc -20]