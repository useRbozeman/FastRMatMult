
## GPU Installation Guide:
## http://rstudio-pubs-static.s3.amazonaws.com/76831_0710fb114a704200886af1a4b8b8a020.html#/9

# Sys.getenv()
# Sys.setenv(LD_LIBRARY_PATH ="/usr/local/cuda-7.0/lib64:/usr/lib/R/lib:/lib:/usr/lib/x86_64-linux-gnu:/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/amd64/server")
# Sys.setenv(CUDA_HOME="/usr/local/cuda/lib64")

# sudo ldconfig /usr/local/cuda/lib64

# library(gputools)

library(FastRMatMult)
library(compiler)


n <- 300
a <- matrix(rnorm(n*n), n, n)
b <- matrix(rnorm(n*n), n, n)

mat_mult_cmp <- cmpfun(mat_mult)

system.time(c <- mat_mult(a,b))
system.time(c <- mat_mult_cmp(a, b))
system.time(c <- mat_mult_f(a,b))
system.time(c <- mat_mult_c(a,b))
system.time(c <- a %*% b)

# system.time(c <- gpuMatMult(a,b))
# 
# 
# system.time(ainv <- solve(a))
# system.time(ainv <- gpuSolve(a))
# 
# system.time(qr <- qr(a))
# system.time(qr <- gpuQr(a))
