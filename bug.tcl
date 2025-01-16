proc badproc {x} {
  if {$x > 10} {
    return 1
  }
  return 0
}
puts [badproc 20]
puts [badproc -20]