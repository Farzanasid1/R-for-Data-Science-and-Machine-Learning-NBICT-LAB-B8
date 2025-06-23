dataset = data.frame(dose = c("D0.5", "D1", "D2"),
len = c(4.2, 10, 29.5))
library(ggplot2)
#basic barplot
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity")

#horizontal barplot
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity") +
  coord_flip()
# changing the width of the bars
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity" , width = .5)

#changing colors
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", color = "blue", fill = "steel blue", width = 0.5)

#barplot with labels
#outside bars
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", color = "blue", fill = "steel blue") +
  geom_text(aes(label = len), vjust = -0.5, size = 3, color = "#999999") + 
  theme_minimal()
#inside bars
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", color = "blue", fill = "steel blue") +
  geom_text(aes(label = len), vjust = 1.6, size = 3, color = "#999999") + 
  theme_minimal()


mycardata = mtcars
  #barplots of counts
# to make a barplot of counts, we will use mtcars dataset

ggplot(data = mycardata, aes(x = factor(cyl))) +
  geom_bar(stat = "count, width = 0.7)
  
ggplot(data = myCarData, aes(x = factor(cyl))) +
geom_bar(stat = "count", width = 0.7, fill= "steelblue") +
theme_minimal()

