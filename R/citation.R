
#' Creating an APA citation
#'
#' Given the name of the article and the user's API key, this
#' function returns a character string of APA citation for that article.
#'
#'
#'
#' @param name The name of the article
#' @param key The API key of the user
#'
#' @return A character string of APA citation
#'
#' @importFrom jsonlite read_json
#' @export
APA <- function(name, key) {
#User need to input the name of the article and the API key in order to search
  search_url <- paste0("https://serpapi.com/search?engine=google_scholar&q=",
                       utils::URLencode(name),
                       "&api_key=", key
  )
  article <- jsonlite::read_json(search_url)

  serpapi_cite_link <- article$organic_results[[1]]$inline_links$serpapi_cite_link

  citation_json <- jsonlite::read_json(paste0(serpapi_cite_link, "&api_key=", key))

  #citation_json$citations
  APA_citation <- citation_json[["citations"]][[2]][["snippet"]]
  return(APA_citation)
}
