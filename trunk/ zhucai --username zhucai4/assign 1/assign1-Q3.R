# Inicialization 
x0<--110
x<-35
y0<--150
y<-40
power<-seq(1:5)

# Set IRR Equations
fn1<-function(r1){
df1<-1/(1+r1)
pv1<-x*sum(df1^power)+x0
return(pv1)
}

fn2<-function(r2){
df2<-1/(1+r2)
pv2<-y*sum(df2^power)+y0
return(pv2)
}

# Find Roots with Bisection method
# Find Inicial Intervels
r<-seq(from=0.05,to=0.30,by=0.001)
plot(r,lapply(r,fn1),type="l",main="fn1")
windows()
plot(r,lapply(r,fn2),type="l",main="fn2")
# Use Bisection Function
setwd("C:/Documents and Settings/zc/Desktop/course-IS") # can be changed 
source("bisection.R")
IRR1<-bisection(fn1,x.l=0.05, x.r=0.30)
IRR2<-bisection(fn2,x.l=0.05, x.r=0.30)
IRR1
IRR2
# NPV Calculation 
r<-0.05
NPV1<-fn1(0.05)
NPV2<-fn2(0.05)
NPV1
NPV2



