m <- replicate(10, rnorm(10), simplify = "matrix")
m <- as.data.frame(m)
View(m)
install.packages("rbenchmark")
library(rbenchmark)
benchmark(
  vect = as.vector(m),
  conc = (n <- as.vector(for (i in seq(nrow(m))) {
    for (j in seq(ncol(m))) {
      print(2*sin(m[i, j]))
    }
  }))
)
