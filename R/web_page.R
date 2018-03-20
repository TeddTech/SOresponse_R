#' web_page(url)
#'
#'Loads Stack Overflow response webpage.
#'
#' @param url Full URL to stack overflow response webpage. Character type.
#'
#' @return q The question being asked on the given Stack Overflow response webpage. Character type. If unsuccessful corresponding error will be returned.
#' @export
#'
#' @examples
#' #'web_page('https://stackoverflow.com/questions/3505701/grouping-functions-tapply-by-aggregate-and-the-apply-family')

url <- 'https://courses.students.ubc.ca/cs/main?pname=subjarea&tname=subjareas&req=1&dept=DSCI'

web_page <- function(url) {

  response_page <- xml2::read_html(url) # Loads URL
  item <- response_page %>% # Pulls question
    rvest::html_nodes('##mainTable a') %>%
    rvest::html_text()

  #print(question) #prints question
  return(item) # returns url

}
