#generating data to be used as a toy problem for practice
#analysis in SAS.

x <- factor(rep(c(1,2,3), each = 10))
beta <- c(2.5, 1.5,4.5)
x

u <- rnorm(length(x),sd = 0.3)
e <- rnorm(length(x),sd = 1.1)
y <- round(drop(model.matrix(~0+x)%*%beta) + u + e, 4)

df <- data.frame(x,y)

library(foreign)
write.foreign(df, "U:/ex_mixedfx1.txt", "U:/ex_mixedfx1.sas",
              package = "SAS")
