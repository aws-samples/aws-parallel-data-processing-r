library(readr)
library(dplyr)

input_dir <- "/opt/ml/processing/input/"
output_dir <- "/opt/ml/processing/output/"

preprocess <- function(file) {
  bank_additional_full_raw <- read_csv(file)
  
  # drop some columns
  bank_additional_full_processed <- bank_additional_full_raw %>%
    select(-c('duration', 'emp.var.rate', 'cons.price.idx', 'cons.conf.idx', 'euribor3m', 'nr.employed'))
  
  write_csv(bank_additional_full_processed, paste0(output_dir,basename(tools::file_path_sans_ext(file)), "_processed.csv"))
}

filenames <- Sys.glob(paste(input_dir, "*.csv", sep=""))
for (file in filenames) {
  preprocess(file)
}