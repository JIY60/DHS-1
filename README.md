# DHS_Project Group1
By Jia, Xiaoya, Alberto

Tasks:
Suppose you want to see whether mental illness is playing an increasingly important role in recent DHS cases.  Your goal is to create a "time-series" graph where the x axis is CaseID (for now assume the case # is assigned chronologically) and the y axis is the number of family members in the case that utilized mental health services. For example, for 32613 this is 6, for 31659 it's 2, and for 32048 it's 3. In order to do this you need:
1. AggregateByCase<-function(group,x). This computes # of non NAs in MH for every CaseID. The result of this function should be a data frame where each row is a case with a case ID and # of individuals using mental health services. Put this in: DataCleaning.R 
2. PlotByTime<-function(time, count). This function treats CaseID like a time variable (small to large) and plot the number of family members that utilize mental health services in each case. Put this in: Plotting.R
3. a script in main.R that reads in DHSMini.csv, then call AggregateByCase and send its output to PlotByTime. 

Requirement:
0. Delete the repositories created during the class today;
1. 1st person: create a new repository with group name, and please make sure you initiate with a ReadMe file;
2. 1st person: upload the data file (XXX.csv);
3. After the repository is ready, please invite other teammates as collaborators (Also please remember to add Dr. Linardi and me to it!);
4. 2nd person: create "function" folder, and then create "DataCleaning.R" inside the folder and put AggregateByCase<-function(group,x) in the file;
5. 3rd person: create "graphs" folder, and then create "Plotting.R" inside the folder and put PlotByTime<-function(time, count) in the file;
6. 1st person: create "main.R" using the functions in both DataCleaning.R and Plotting.R. If you find mistakes or need changes with either file, send them comments through GitHub. 2nd and 3rd person should fix it and leave comments in the commits. Make sure you leave plenty to traces of the process through which you communicate with each other for us to see. 
7. Make sure everyone has the same version of files on both local machine and GitHub.

Submit a PDF file on courseweb, and the file includes:
1. The link to your repository;
2. Three screen shots of RStudio commit history which presents that all three members have the same version of files on both local machine and GitHub;
3. The problems you meet in using RStudio, Git and GitHub.
