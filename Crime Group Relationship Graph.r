# loading ggplot2 into R
library(ggplot2)

# Assigning values to vectors
race <- c(35944, 35845, 37466, 42930)
religion <- c(1618, 1572, 2269, 3254)
orientation <- c(4345, 4241, 4584, 5597)
disability <- c(1748, 1911, 2006, 2508)
transgender <- c(313, 364, 557, 605)
year <- c(2012, 2013, 2014, 2015)

# Assigning vectors to a data frame called 'crime'
crime <- data.frame(year, race, religion, orientation, disability, transgender)

# plotting the graph points, lines, color, size, legend and layout
graphplot <- ggplot(crime, aes(x=year))+geom_point(aes(y = race, color="Race"), 
size = 5) + geom_line(aes(y = race, color="Race")) + 
geom_point(aes(y = orientation, color="Orientation"), size = 3) + 
geom_line(aes(y = orientation, color="Orientation")) + 
geom_point(aes(y = disability, color="Disability"), size = 1.5) + 
geom_line(aes(y = disability, color="Disability")) + 
geom_point(aes(y = transgender, color="Transgender"), size = 1) + 
geom_line(aes(y = transgender, color="Transgender")) + 
geom_point(aes(y = religion, color = "Religion"), size = 2)+ 
geom_line(aes(y = religion, color = "Religion")) + 
geom_point(aes(y = religion, color = "Religion")) + 
ylab(label="Number of Reported Incidents") + xlab("Year") + 
theme(legend.title = element_blank())

# returning above graphplot
graphplot