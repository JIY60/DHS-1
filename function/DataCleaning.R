dat<-read.csv("HW9.csv")
lengthnoNA<-function(x){
  length(x[-which(is.na(x))])
}
AggregateByCase<-function(group,x){
  output<-tapply(x,group,lengthnoNA)
  data.frame(output)
}
grouptime<-AggregateByCase(dat$CaseID,dat$MH1)
grouptime<-cbind(CaseID = rownames(grouptime), grouptime) 