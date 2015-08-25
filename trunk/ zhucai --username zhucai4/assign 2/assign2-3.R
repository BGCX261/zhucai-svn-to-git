rm(list=ls(all=TRUE))
# for question (1)
a<-c(1,1,0,-1,1,2,1,-1,0,1,2,-1,1,1,1,0)
A<-matrix(a,nrow=4,ncol=4,byrow=TRUE)
B<-c(0,0,0,1)
A
solve(A,B)
# for question (2)
d<-c(1,1,0,-0.4,-1,
     1,2,1,-0.8,-1,
     0,1,2,-0.8,-1,
     0.4,0.8,0.8,0,0,
     1,1,1,0,0)
D<-matrix(d,nrow=5,ncol=5,byrow=TRUE)
E<-c(0,0,0,0.6,1)
D
solve(D,E)
# for question (3)
cov<-matrix(c(1,1,0,1,2,1,1,1,1),nrow=3,ncol=3,byrow=TRUE)
F<-c(0.4,0.8,1)
omega1<-solve(cov,F)
omega1
Return<-c(0.4,0.8,0.8)
omega2<-solve(cov,(Return-0.1))
omega2
Omega<-omega2/sum(omega2)
Omega
