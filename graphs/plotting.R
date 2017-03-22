#PlotByTime<-function(time, count). This function treats CaseID like a time variable (small to large) 
#and plot the number of family members that utilize mental health services in each case. Put this in: Plotting.R

PlotByTime<-function(time, count){
  time<-as.numeric(time) # should be <- , miss "-"
  time<-sort(time)
  plot(time, count, type="o")
}

PlotByTime(time,count)
