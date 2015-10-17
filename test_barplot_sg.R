library(MASS)

source("barplot_sg.R")
m1<-as.matrix(read.table(file = "m1.dat",header = T), as.is=T)
m2<-as.matrix(read.table(file = "m2.dat",header = T), as.is=T)
m3<-as.matrix(read.table(file = "m3.dat",header = T), as.is=T)

#Prueba 1, verticales, el origen del problema
pal1 = c(rgb(225,168,165,maxColorValue = 255),rgb(205,102,95,maxColorValue = 255))
pal2 = c(rgb(165,195,223,maxColorValue = 255),rgb(86,134,182,maxColorValue = 255))
pal3 = c(rgb(206,220,171,maxColorValue = 255),rgb(154,178,96,maxColorValue = 255))

barplot.sg(m3,space.before=0,space=2.5, col=pal1, ylim=c(0,1.2*max(m1[2,])), border=NA)#,xaxt="n")
barplot.sg(m2,space.before=1,space=1.5, col=pal2 ,xaxt="n", border=NA, add=T)
barplot.sg(m1,space.before=2,space=0.5, col=pal3,xaxt="n", border=NA, add=T)
legend("topright",c("Data11","Data12","Data21","Data22","Data31","Data32"),
       fill=append(append(pal1,pal2),pal3),border=NA, cex=0.7 )

