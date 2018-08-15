# Statistical Learning: Chapter 9. Quiz
x=matrix(rnorm(20*10), ncol=10)
y=c(rep(0,10),rep(1,5),rep(0,5))
x[y==1,]=x[y==1,] + 1
dat=data.frame(x=x, y=as.factor(y))
# 20x11 matrix
train=c(sample(10,50,rep=T),sample(11:20,50,rep=T))

library(e1071)
svmfit=svm(y~.,data=dat,subset=train,cost=10,scale=FALSE)
summary(svmfit)
plot(svmfit,dat)
# > plot(svmfit,dat)
# plot.svm(svmfit, dat) でエラー: missing formula.

# color check
plot(1:10, 1:10, col=1:10)
