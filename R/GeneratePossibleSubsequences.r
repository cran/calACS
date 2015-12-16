#' Genearte all possible subsequences of the input vector. Require all items in the vector to be unique
#'
#' @param vin input vector that contains unique items
#' @return a list of vectors, each a unique subsequence of the input vector

GeneratePossibleSubsequences <- function(vin){
  #test
  #vin=A
  #i=2
  #j=2

  lout<-list()

  #i is the length of the subsequence extracted
  #j is the starting position of the subsequence in vin
  for(i in 1:length(vin)){
    for(j in 1:(length(vin)-(i-1))){
      lout[[length(lout)+1]] <- vin[j:(j+i-1)]
    }
  }
  lout
}
