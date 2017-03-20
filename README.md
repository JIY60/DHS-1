# DHS_Project Group1
By Jia, Xiaoya, Alberto

Tasks:
Suppose you want to see whether mental illness is playing an increasingly important role in recent DHS cases.  Your goal is to create a "time-series" graph where the x axis is CaseID (for now assume the case # is assigned chronologically) and the y axis is the number of family members in the case that utilized mental health services. For example, for 32613 this is 6, for 31659 it's 2, and for 32048 it's 3. In order to do this you need:
1. AggregateByCase<-function(group,x). This computes # of non NAs in MH for every CaseID. The result of this function should be a data frame where each row is a case with a case ID and # of individuals using mental health services. Put this in: DataCleaning.R 
2. PlotByTime<-function(time, count). This function treats CaseID like a time variable (small to large) and plot the number of family members that utilize mental health services in each case. Put this in: Plotting.R
3. a script in main.R that reads in DHSMini.csv, then call AggregateByCase and send its output to PlotByTime. 
