library(rvest)
library(httr)
library(jsonlite)


# example
name <- c("Recognition and prevention of child abuse in the child with disability")
key <- c("8efa1b058c869298ced0ed407f3886f9ca45042acdd23691e48b6bced92d3652")



search <- function(name, key) {
#User need to input the name of the article and the API key in order to search
  search_url <- paste0("https://serpapi.com/search?engine=google_scholar&q=",
                       utils::URLencode(name),
                       "&api_key=", key
  )
  article <- read_json(search_url)

  serpapi_cite_link <- article$organic_results[[1]]$inline_links$serpapi_cite_link

  citation_json <- read_json(paste0(serpapi_cite_link, "&api_key=", key))

  citation_json$citations
  BibTex_html <- citation_json[["links"]][[1]][["link"]]
  BibTex <- read_html(paste0(BibTex_html, "&api_key=", key))
  citation_json[["citations"]][[2]][["snippet"]]

}



search("Recognition and prevention of child abuse in the child with disability", "8efa1b058c869298ced0ed407f3886f9ca45042acdd23691e48b6bced92d3652")
