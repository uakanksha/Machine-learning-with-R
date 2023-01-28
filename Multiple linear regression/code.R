## MULTIPLE LINEAR REGRESSION
# Read the file
data <- read.csv("/home/akanksha/Downloads/CarPrice_Assignment.csv")
data1 <- subset(data, fueltype == "diesel")
# MULTIPLE LINEARE REGRESSION
d <- lm(price~horsepower+stroke,data = data1)
summary(d)
# As the engine size is greater than the threshold , it is stastically insignificant, and we need to remove it
e <- lm(price~horsepower+stroke+peakrpm,data = data1)
s <- lm (price~. , data = data1)
summary(e)
# The Adjusted R-squared has increased from 0.89-0.90.
# The ANOVA / F_test result is is very low and hence we can reject the null hypothesis (all the coefficients == 0)
#Next is the confidence interval check
confint(e,level = 0.95)
# To check Multi-colinearity
library(car)
vif(e)
# If VIF > 10 , then we have a problem of Multi-colinearity
