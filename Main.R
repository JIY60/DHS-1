dat<-read.csv("DHSMini.csv")
# Datacleaning
lengthnoNA<-function(x){
  length(x[-which(is.na(x))])
}
AggregateByCase<-function(group,x){
  output<-tapply(x,group,lengthnoNA)
  data.frame(output)
}
grouptime<-AggregateByCase(dat$CaseID,dat$MH1)
grouptime<-cbind(CaseID = rownames(grouptime), grouptime) 

#plotting
PlotByTime<-function(time, count){
  time<-as.numeric(time)
  time<-sort(time)
  plot(time, count, type="o")
}

# main
PlotByTime(grouptime$CaseID,grouptime$output)