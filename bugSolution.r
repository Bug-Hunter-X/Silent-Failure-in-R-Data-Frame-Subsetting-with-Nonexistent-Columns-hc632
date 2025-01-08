```r
# This improved code uses error handling to check if all columns exist before subsetting.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D")

# Check if all columns exist.  If not, raise an error and stop execution. 
if (!all(cols %in% names(df))) {
  stop("Error: One or more specified columns do not exist in the data frame.")
}

subset_df <- df[, cols]
```