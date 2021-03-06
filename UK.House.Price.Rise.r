library(ggplot2)
nmaps<-read.csv("C:\\Users\\matth\\desktop\\houseprice.csv", as.is=T)
l <- ggplot(nmaps, aes(x=Year))+geom_point(aes(y = New Houses, color="New Houses"), size = 2) + geom_line(aes(y = New Houses, color="New Houses")) + geom_point(aes(y = Modern Houses, color="Modern Houses"), size = 2) + geom_line(aes(y = Modern Houses, color="Modern Houses")) + geom_point(aes(y = Old Houses, color="Old Houses"), size = 2) + geom_line(aes(y = Old Houses, color="Old Houses")) + ylab(label="Price £s") + xlab("Year") + theme(legend.title = element_blank())
