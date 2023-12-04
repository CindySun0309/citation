function_factory <- function() {
  ##create a dataframe using the mock dataset
  root_dir <- rprojroot::find_root(criterion = rprojroot::is_r_package)
  pilot_df <- read.csv(file.path(root_dir, "data", "270dataset - Sheet1 (2).csv"))
  return(pilot_df)
  }
