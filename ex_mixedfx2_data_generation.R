#generating data to be used as a toy problem for practice
#analysis in SAS. Intended to simulate an unbalanced design.

#restricting the number of measurements per xu
weeks <- 1:5 

#deciding how many times each xu was measured
measures <- sample(weeks, size = 50, replace = TRUE) 
trt_assignment <- rep(c(1,2), each = 25)

#constructing vectors with the correct number of repetitions for
#each xu
xu <- numeric()
trt <- numeric()
for (i in 1:length(measures)) {
  xu <- c(xu, rep(i, measures[i]))
  trt <- c(trt, rep(trt_assignment[i], measures[i]))
}

#model matrices for fixed and random effects
X <- model.matrix(~0+factor(trt))
Z <- model.matrix(~0+factor(xu))

#fixed means for trt 1 & 2
beta <- c(5.5, 2.3)

#generating random xu effects and errors
u <- rnorm(length(trt_assignment), 1.1)
e <- rnorm(length(xu), 0.35)

#constructing response vector then data frame
y <- X%*%beta + Z%*%u + e

df <- data.frame(trt, xu, y)

library(foreign)
write.foreign(df, "U:/ex_mixedfx2.txt", "U:/ex_mixedfx2.sas",
              package = "SAS")
