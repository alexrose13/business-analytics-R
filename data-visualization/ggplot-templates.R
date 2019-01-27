#ggplot is a powerful data visualization library. While it is diverse the following contains some some examples that I've found useful.

#a very basic plot ggplot
ggplot(data.set, aes(x=independ.variable, y=depend.variable)) + geom_point(size=.5)

#a more complex version of that same plot.
ggplot(data, aes(x=independ.variable, y=depend.variable)) +
  theme_minimal(base_size = 11) +
  geom_point(size=1.5, alpha=.65, color="slateblue3", shape=16) +
  geom_smooth(method='lm', color="gray20", fullrange=TRUE, se=FALSE, size=.8) +
  labs(x="Label for X Axis") +
  labs(y="Label for Y Axis")
  
#Noteworthy Features of the above plot:
#theme_minimal is a good starting place that will give you a rather clean plot
#geom_smooth and the subsequent arguments generate a line based upon the linear mondel which represents the line of best fit for our data.

