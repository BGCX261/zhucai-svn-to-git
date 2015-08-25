# inicialization
sigA<-0.15
sigB<-0.05
ro<-0.2
# set function
fn<-function(a){
fn0<-a^2*0.15^2+(1-a)^2*0.05^2+2*a*(1-a)*0.05*0.15*0.2
fn1<-0.3*a-2*(1-a)*0.05 + 2*0.2*0.15*0.05*(1-2*a)
fn2<-0.3+0.1-0.2*0.15*0.05*2*2
return(c(-1*fn0,-1*fn1,-1*fn2))
}
# opimization
source("C:/Program Files/R/R-2.10.1/work/newton.R")
result<-newton(fn,0.3)
result
std<-sqrt(-1*fn(result)[1])
std


