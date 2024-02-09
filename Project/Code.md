### Import the libraries ###
```bash
$ library(readxl)
$ library(ggplot2)
$ library(Hmisc)
```
### Import the stpcks dataset ###
```bash
 $ data= read_xlsx("C:\\Users\\upadh\\OneDrive\\Documents\\RDATA1204\\Final_project\\Stock_MLRAnalysis.xlsx")
```
### find the summary of the dataset ###
```bash
$ describe(data)
$ sd(data$return)
$ sd(data$stock_return_scaled)
```
### plot a Histogram ###
```bash
$ ggplot(data = data, aes(x = stock_return_scaled)) + geom_histogram(color="red", fill="pink", binwidth = 20)+labs(title="Histogram for Stock return")
```
### T-test ###
      # Ho : µ = 300
      # H1 = µ ≠ 300
```bash
$ t.test(data$stock_return_scaled , mu=300,alternative = "two.sided")
```
### Perform a simple linear regression ###
```bash
$ LM= lm(stock_return_scaled~dividend,data = data)
 $ summary(LM)
```
### Perform a Multivariate regression ###
```bash
$ MR=lm(stock_return_scaled~.,data=data)
$ summary(MR)
$ sd(data)
```
