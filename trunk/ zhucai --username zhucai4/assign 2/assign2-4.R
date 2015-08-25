rm(list=ls(all=TRUE))
data<-read.csv("C:/Documents and Settings/zc/mywork/course-IS/assign 2/assig2q4.csv")
stocks<-data[ ,2:16]    # close price for 15 stocks

Ocal<-function(data){
# function calculting Oij in the lecture notes for each stock
T<-22     # investment period
n<-length(data)
K<-n-T    # sample size
O<-rep(0,length=K)
  for(j in 1:K){
  O[j]<-(data[(j+T)]-data[j])/data[j]
  }
return(O)
}

returns<-apply(stocks,2,Ocal)  # calculte Oij for each stock
dim(returns)                   # examing dimentions

# for question (1)
r<-apply(returns,2,mean)       # return vector containing expected returns for each stock
COV<-cov(returns)              # calculate covirance matrix
N<-ncol(COV)                   # examing dimentions
N
# begin construction for solve A2%*%x=B1
vector<-rep(-1,length=N)
A1<-cbind(COV,vector)
dim(A1)
vector<-c(rep(1,length=N),0)
A2<-rbind(A1,vector)
dim(A2)
B1<-c(rep(0,length=N),1)
# end construction
omega1<-solve(A2,B1)
round(omega1,4)

# for question (2)
# begin construction for solve C2%*%x=B2
e<-rep(1,length=N)*(-1)
r<--1*r
C1<-cbind(COV,r,e)
r<-c(r,0,0)
e<-c(e,0,0)
C2<-rbind(C1,r,e)
dim(C2)
B2<-c(rep(0,length=N),0.008,1)
# end construction
omega2<-solve(C2,B2)
round(omega2,4)
