#' Calculate the total number of all common subsequences between a string and a vector/list of strings
#' Subsequences cannot be interrupted by any item, i.e. q-w is not a subsequence of q-w-e-r and q-e-w-r due to the interrupting 'e' in the second sequence
#'
#' @param vecA The single string
#' @param listB The vector/list of 1 or more strings
#' @param sep Delimiter separating each items in a sequence
#' @param dropFirstItem Boolean. If true, the first item in each sequence is excluded from counting all subsequences
#' @return The total number of all common subsequences as an integer in a vector
#' @examples
#' calACSStrict("q-w-e-r", c("q-e-w-r","q-r-e-w"), "-")
#' calACSStrict("itemToBeDropped-q-w-e-r", "itemToBeDroped-q-e-w-r", "-", dropFirstItem=TRUE)
#'
#' @export

calACSStrict <- function(vecA, listB, sep="-", dropFirstItem=FALSE){
  sapply(listB, calACSstrStrict, strA=vecA, sep=sep, dropFirstItem=dropFirstItem, simplify=TRUE, USE.NAMES = FALSE)
}
