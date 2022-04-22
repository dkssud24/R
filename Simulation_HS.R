#homo
x <- 1:1000
mer <- data.frame(mer)
mer2 <- mer[ mer$X < 510,]
mer2 <- mer2[ mer2$X > 490,]
#calulate mean of error in the mideian group
mean(mer2$Y)
sd(mer2$Y)
y <- NULL
err <- sample(x=-580:580,size=1000,replace=TRUE)
y <- x +err
summary(lm(y~x))
plot(x=x,y=y)

#hetero
X <- 1:500
Y <- rnorm(n = 500, mean = X, sd = 0.6 * X)

# estimate a simple regression model
reg <- lm(Y ~ X)
# plot the data
plot(x = X, y = Y, pch = 19, col = "steelblue", cex = 0.8)

# add the regression line to the plot
abline(reg, col = "darkred",    lwd = 1.5)
