# Silent Failure in read.csv() when File Not Found

This repository demonstrates a subtle bug in R's `read.csv()` function. When attempting to read a CSV file that does not exist, the function silently fails, returning an empty data frame instead of raising an error. This can lead to hard-to-debug issues later in the code.

## Reproducing the Bug
The `bug.r` file contains code that attempts to read a non-existent file.  Run this script, and observe that no error is thrown.  The variable `data` will contain an empty data frame. 

## Solution
The `bugSolution.r` file demonstrates a robust way to handle the file reading process.  It explicitly checks for file existence before attempting to read it, raising informative error messages in case of failure.