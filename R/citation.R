library(rvest)
library(httr)
library(jsonlite)

search <- function(name, key) {

  search_url <- paste0("https://serpapi.com/search?engine=google_scholar&q=",
                       utils::URLencode(name),
                       "&api_key=", key
  )
  article <- read_json(search_url)

  next_url <- article$organic_results[[1]]$inline_links$serpapi_cite_link

  citation_json <- read_json(paste0(next_url, "&api_key=", key))

  citation_json$citations
  #citation_json$links
}
