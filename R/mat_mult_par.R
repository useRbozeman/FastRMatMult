mat_mult_par <- function(A, B){
  cl <- makeCluster(8, type = "SOCK")
  AB <- docall(rbind, clusterApply(cl, splitRows(A, length(cl)), get("%*%"), B))
  stopCluster(cl)
  return(AB)
}
