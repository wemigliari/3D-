
library(readxl)
library(plotly)

data <- read_excel("/Users/wemigliari/Documents/R/data/para/para_propriedades.xlsx")
data <- data.frame(data)
data[data=="X"]<-0
data[data=="-"]<-0
data[is.na(data)] <- 0

class(data)

data[, c(5:43)] <- sapply(data[, c(5:43)], as.factor)

data[, c(5:43)] <- sapply(data[, c(5:43)], as.numeric)

## Area 0-0.1 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_0_01, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_0_01, z = data$num_unid_0_01, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 0-0.1 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 0.1-0.2 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_01_02, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_01_02, z = data$num_unid_01_02, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 0.1-0.2 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 0.1-0.2 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_02_05, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_02_05, z = data$num_unid_02_05, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 0.2-0.5 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 0.5-1 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_05_1, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_05_1, z = data$num_unid_05_1, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 0.5-1 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 1-2 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_01_02, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_1_2, z = data$num_unid_1_2, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 1-2 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 2-3 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_2_3, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_2_3, z = data$num_unid_2_3, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 2-3 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 3-4 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_3_4, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_3_4, z = data$num_unid_3_4, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 3-4 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 4-5 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_4_5, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_4_5, z = data$num_unid_4_5, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 4-5 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))


## Area 5-10 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_5_10, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_5_10, z = data$num_unid_5_10, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 5-10 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 10-20 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_10_20, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_10_20, z = data$num_unid_10_20, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 10-20 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))


## Area 20-50 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_20_50, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_20_50, z = data$num_unid_20_50, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 20-50 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 50-100 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_50_100, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_50_100, z = data$num_unid_50_100, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 50-100 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 100-200 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_100_200, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_100_200, z = data$num_unid_100_200, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 100-200 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 200-500 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_200_500, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_100_200, z = data$num_unid_200_500, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 200-500 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 500-1000 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_500_mil, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_500_mil, z = data$num_unid_500_mil, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 500-1000 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 1000 a 2000 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_mil_dois, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_mil_dois, z = data$num_unid_mil_dois, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 1000-2000 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area 2,500 up to 10,000 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_dois_mil_meio_10, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_dois_mil_meio_10, z = data$num_unid_dois_mil_meio_10, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, 2,500-10,000 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

## Area + 10,000 ha
plot_ly(data, marker = list(symbol = 'circle', size = data$area_10_mil_mais, color = I(data$color),
                            line = list(width = 1, color = 'black'), opacity=0.5)) %>%
  add_markers(x = data$area_hec, y = data$area_10_mil_mais, z = data$num_unid_10_mil_mais, color = ~factor(data$State), showlegend = T)%>%
  layout(
    title = "Area (ha) and Size of the Properties, Pará",
    scene = list(
      xaxis = list(title = "x = Total Area (ha)"),
      yaxis = list(title = "y = Size, + 10,000 ha"),
      zaxis = list(title = "z = Units"),
      camera = list(eye = list(x = 2, y = 2, z = 2))
    ))

#plot_ly(data) %>%
  #add_markers(x = data$area_hec/100000, y = data$area_0_01, z = data$area_01_02, color = ~factor(data$State), showlegend = T) %>%
  #add_mesh(x = data$area_hec/100000, y = data$area_0_01, z = data$area_01_02, data = data, opacity = 0.3)



