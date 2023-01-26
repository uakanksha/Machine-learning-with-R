#linear regression
#Load dataset
data <- read.csv("/home/akanksha/Downloads/test.csv")
#plot the data for visualisation
plot(data$x,data$y,col="red",pch=1,cex=2)
#check the Pearson correlation cofficient
cor(data$x,data$y, method = "pearson")
#Fitting to the linear model i.e Y=MX+C
reg <- lm (y~x , data = data)
summary(reg)
#Value of intercept is greater than 0.05 i.e its statistically insignificant and hence will be removed from the equation
r2 <- lm (y~x+0,data = data)
summary(r2)
# the value of sq(R) is increased after removing intercept from the equation
#The final test i.e Confidence interval is calculated fro 95%
confint(r2,level = 0.95)
#Regression line plotting for the above data fitting
abline(r2,col="black",lwd=2)
