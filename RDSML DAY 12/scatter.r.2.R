library(ggplot2)
dataset = mtcars
# converting cyl column from a numeric to a factor variable
dataset$cyl = as.factor(dataset$cyl)

#adding regression lines based on multiple groups
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
geom_point()+
  geom_smooth(method = lm)

#Removing the confidence intervals
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm, se = FALSE)
#Extending the regression lines
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm, se = FALSE, fullrange=TRUE)
#Filling the color of confidence bands
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm, aes(fill=cyl))

#Changing point shapes manually
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3,16,17))+
  theme(legend.position = "top")

#Changing point color manually
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3,16,17))+ scale_color_manual(values=c('darkblue', 'darkred', 'orange'))+
  theme(legend.position = "top")
  
#Customize scatter plots
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3,16,17))+ scale_color_manual(values=c('darkblue', 'darkred', 'orange'))+
  labs(title= "Miles per gallon \naccording to the weight" ,
       x="weight", y= "Miles/Gallon")+
  theme(legend.position = "top")

#customizing themes
plot = ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3,16,17))+ scale_color_manual(values=c('darkblue', 'darkred', 'orange'))+
  labs(title= "Miles per gallon \naccording to the weight" ,
       x="weight", y= "Miles/Gallon")+
  theme(legend.position = "top")

plot + theme_classic()
plot + theme_minimal()
