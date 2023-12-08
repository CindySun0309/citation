## code to prepare `DATASET` dataset goes here
citation_data <- data.frame(
  authors = "Wang, H., Kindig, D. A., & Mullahy, J",
  year = "2005",
  title = "Variation in Chinese population health related quality of life: results from a EuroQol study in Beijing, China",
  publication = "Quality of life research, 14, 119-132")

usethis::use_data(citation_data, overwrite = TRUE)
