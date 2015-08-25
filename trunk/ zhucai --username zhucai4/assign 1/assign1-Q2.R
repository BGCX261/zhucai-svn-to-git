r<-1+0.01
power_1<-seq(1,6)
interest_1<-round(sum(100*r^power_1)-100*6,0)
power_2<-seq(1,12)
interest_2<-round(sum(100*r^power_2)-100*12,0)
interest_1
interest_2