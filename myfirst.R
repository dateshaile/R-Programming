library(ggplot2)
head(diamonds)
qplot(diamonds$price, diamonds$carat, xlab="Price", ylab="Carrat", color=diamonds$clarity)