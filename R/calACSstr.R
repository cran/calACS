#' Calculate the total number of all common subsequences between 2 strings
#'
#' @param strA First string
#' @param strB Second string
#' @param sep Delimiter separating each items in a sequence
#' @param dropFirstItem Boolean. If true, the first item in each sequence is excluded from counting all subsequences
#' @return The total number of all common subsequences as an integer
#' @examples
#' calACSstrStrict("q-w-e-r", "q-e-w-r", "-")
#' calACSstrStrict("itemToBeDropped-q-w-e-r", "itemToBeDroped-q-e-w-r", "-", dropFirstItem=TRUE)
#'
#' @export

calACSstrStrict <- function(strA, strB, sep="-", dropFirstItem=FALSE){
  #test
  strA <- 'aa-b-c'
  strB <- 'aa-b-c-d'
  sep='-'
  dropFirstItem=FALSE

  countACS <- 1 #count the empty set as one common subsequence

  A <- unlist(strsplit(strA, sep))
  B <- unlist(strsplit(strB, sep))

  if (dropFirstItem){
    A <- A[-1]
    B <- B[-1]
  }

  listSubseq <- GeneratePossibleSubsequences(A)

  for(i in 1:length(listSubseq)){
    if(is.subvector(subvec = listSubseq[[i]],vec = A) && is.subvector(subvec = listSubseq[[i]], vec = B)){
      countACS=countACS+1
    }
  }
  countACS
}


