```r
# This code robustly handles cases where the file may not exist.
file_path <- "nonexistent_file.csv"

if (!file.exists(file_path)) {
  stop(paste("Error: File not found:", file_path))
}
data <- read.csv(file_path)
```