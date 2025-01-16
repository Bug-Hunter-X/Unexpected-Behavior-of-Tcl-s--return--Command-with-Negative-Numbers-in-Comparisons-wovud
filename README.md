# Tcl 'return' Command Unexpected Behavior with Negative Numbers

This repository demonstrates an uncommon bug in Tcl related to the `return` command used within a procedure (`proc`). Specifically, when comparing negative numbers within conditional statements (`if`), Tcl's string-based comparison can yield unexpected results when combined with the `return` statement.

## Bug Description

The issue stems from Tcl's dynamic typing.  When you use a numeric comparison ($x > 10) with a variable holding a string representation of a number, Tcl does a string comparison.  With negative numbers and the 'return' statement, unexpected behaviour is observed. 

## How to Reproduce

1.  Clone this repository.
2.  Run `bug.tcl`.  Observe the output.
3.  Examine the code to see the erroneous behaviour.
4.  Run `bugSolution.tcl` to see the corrected version. 

## Solution

The solution involves ensuring the variables are explicitly treated as numbers using the `expr` command. 
