library(readr)
library(dplyr)

input_dir <- "/opt/ml/processing/input/"
output_dir <- "/opt/ml/processing/output/"

data_file <- "https://sagemaker-sample-data-us-west-2.s3-us-west-2.amazonaws.com/autopilot/direct_marketing/bank-additional.zip"

download.file(data_file, paste0(input_dir,"/bank-additional.zip"))
unzip(zipfile=paste0(input_dir,"/bank-additional.zip"),
      exdir=paste0(input_dir,"/bank-additional"))
bank_additional_full <- read_csv(paste0(input_dir,"/bank-additional/bank-additional/bank-additional-full.csv"))

splits <- 4
count <- 1
while (count <= splits) {
  bank_additional_full_part <- bank_additional_full %>%
    sample_frac(size = 1 / (splits - count + 1))
  bank_additional_full <- anti_join(bank_additional_full, bank_additional_full_part)
  write_csv(bank_additional_full_part, paste0(output_dir,"bank-additional-full-data",count,".csv"))
  count <- count + 1
}