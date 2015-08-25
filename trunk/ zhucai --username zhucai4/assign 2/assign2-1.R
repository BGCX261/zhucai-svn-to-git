options(error=recover(),warn=2)
# for non-restriction minimization process, u should be transfered to exp(x)
variance1<-function(x){
fun<-0.6*(4/(1+0.5*exp(x)))^2+0.4*(exp(x)/(1+0.5*exp(x)))^2-((1.4-0.1*exp(x))/(1+0.5*exp(x)))^2
return(fun)
}

variance2<-function(x){
fun<-0.6*(4e6/(1e6+0.5*x))^2+0.4*(x/(1e6+0.5*x))^2-((1.4e6-0.1*x)/(1e6+0.5*x))^2
return(fun)
}


# minimization variance
result1<-optimize(variance1,interval=c(15,20))
u1<-exp(result1$minimum)
result1


result2<-optimize(variance1,interval=c(3e6,6e6))
u2<-result2$minimum
result2