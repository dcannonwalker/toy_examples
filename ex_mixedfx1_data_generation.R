#generating data to be used as a toy problem for practice
#analysis in SAS.

x <- factor(rep(c(1,2,3), each = 10))
xu <- factor(rep(1:15, each = 2))
beta <- c(2.5, 1.5,4.5)
x
xu

u <- rnorm(15,sd = 0.3)
e <- rnorm(length(x),sd = 1.1)
y <- round(drop(model.matrix(~0+x)%*%beta) + 
             drop(model.matrix(~0+xu))%*%u + e, 4)

df <- data.frame(x,xu,y)

library(foreign)
write.foreign(df, "U:/ex_mixedfx1.txt", "U:/ex_mixedfx1.sas",
              package = "SAS")
