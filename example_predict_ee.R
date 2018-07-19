
library(mlr)
library(data.table)

# Predict function
predict_ee <- function(model_file, data_file, out_file) {
  # Read model and data
  model <- readRDS(model_file)
  dat <- readRDS(data_file)
  
  # Predict EE
  pred <- predict(model, newdata = dat[, model$features, with = FALSE])$data$response
  dat$EE <- pred
  
  # Save result
  saveRDS(dat, out_file)
  NULL
}

# Run prediction 
model_file <- "models/rf_geneactiv_wrist_left_METs_30s.Rds"
data_file <- "path/to/converted/data/file.Rds" # Output of example_convert_data.R
out_file <- "path/to/output/file.Rds" # Final output including predicted EE
predict_ee(model_file = model_file, data_file = data_file, out_file = out_file)


