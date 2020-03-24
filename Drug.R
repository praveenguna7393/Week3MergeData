
column_names <- c("Dose", "DrugA", "DrugB")

Dose <- c(20,30,40,45,60)
DrugA <- c(16,20,27,40,60)
DrugB <- c(15,18,25,31,40)

drugs <- data.frame(Dose, DrugA, DrugB)
str(drugs)

plot(drugs)

attach(drugs)
plot(Dose,type='o',col = "Blue") 
# type = '0' cirle for the data points.

# Option "b" Indicates that both points and lines should be plotted
plot(Dose, DrugA, type="b")

# parameters of a graph in par functions

test_par <- par(no.readonly = TRUE) 

# lty = line type = 2 means dashed line
# lwd = line width
# pch = 17 solid triangle

par(lty =2, pch = 17)
plot(Dose, DrugA, type = "b")
par(test_par)



