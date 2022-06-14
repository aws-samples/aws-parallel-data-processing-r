library(readr)
library(dplyr)

input_dir <- "/opt/ml/processing/input/"
output_dir <- "/opt/ml/processing/output/"

df <- list.files(path=input_dir, pattern="\\.csv$", full.names = TRUE) %>% 
  lapply(read_csv) %>% 
  bind_rows 

train <- df %>%
  sample_frac(size = 0.7)
df <- anti_join(df, train)
test <- df %>%
  sample_frac(size = 0.5)
valid <- anti_join(df, test)

write_csv(train, paste0(output_dir,"bank-additional-full-train.csv"))
write_csv(test, paste0(output_dir,"bank-additional-full-test.csv"))
write_csv(valid, paste0(output_dir,"bank-additional-full-valid.csv"))