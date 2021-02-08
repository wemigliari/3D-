library(rgl)
library(readxl)

data <- read_excel("/Users/wemigliari/Documents/R/data/para/para_propriedades.xlsx")
data <- data.frame(data)
data[data=="X"]<-0
data[data=="-"]<-0

class(data)

data[, 5:42] <- sapply(data[, 5:42], as.factor)

data[, c(5:42)] <- sapply(data[, c(5:42)], as.numeric)


# Add a new column with color
mycolors <- c('royalblue1', 'gold', 'oldlace')
data$color <- mycolors[as.numeric(data$total)]

# Plot
par(mar=c(0,0,0,0))
plot3d( 
  x=data$total, y=data$area_hec, z=data$num_unid_0_01, 
  col = data$color, 
  type = 's', 
  radius = .1,
  xlab="Total", ylab="Area(ha)", zlab="0.0,1 ha")

writeWebGL(filename="/Users/wemigliari/Documents/R/R_Scripts/Rmarkdown/para_desmatamento/images/para_propriedades.html" ,  width=600, height=600)