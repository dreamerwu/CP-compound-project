#Usage : the following code was utilized to calculate IC50 value of CP compounds
# Time: April-15-2018
#Programmer: Binghao Wu, Research fellow at Massachusetts General Hospital, Harvard Medical School, Email: haowbdreamer@gmail.com, 

library("drc")

input=read.delim("D:/demo/HUTU80.txt",head=T,sep="\t")

input=read.delim("D:/demo/HCT116.txt",head=T,sep="\t")
Concentration=input[,1:1]
Response=input[,4:4]       
df=data.frame(Concentration=Concentration,Response=Response)
fit=drm(Response~Concentration,data=df,fct=LL.3(),type="continuous",separate=TRUE) 
result=ED(fit,50)                                             #calculate IC50                                              #Extract IC50
summary(fit)
plot(fit,ylim=c(0,1.2),xlim=c(0,30),col="red",main="HUTU80 cells under 10% FBS",xlab="CP124 Concentration (uM)",ylab="Relativ Cell viability (MTT)",sub="CP124 IC50 = 0.815 uM")

plot(fit,ylim=c(0,1.2),xlim=c(0,30),col="red",main="HCT116 cells under 2.5% FBS",xlab="CP124 Concentration (uM)",ylab="Relativ Cell viability (MTT)",sub="CP124 IC50 = 0.0067 uM")













