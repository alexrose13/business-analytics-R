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
#geom_smooth and the subsequent arguments generate a line based upon the linear model which represents the line of best fit for the given data.
#Bar Graph
ggplot(data = train, aes(x=as.factor(new_home), y = SalePrice))+
  geom_bar(stat = "summary", fun.y = "median", fill = "royalblue2")+
  scale_y_continuous(breaks= seq(0, 800000, by=50000))+
  labs(title = "Median Sale Price vs. Binary New Home Status", caption = "This variable flags only homes that were turly 'new' at the time of sale")+
  ylab("Median Sale Price")+
  xlab("New Home?")

#scatter plot with summary line
ggplot(data=train, aes(x=age_at_sale, y=SalePrice))+
      geom_point(col='blue') + geom_smooth(method = "lm", se=FALSE, color="black", aes(group=1)) +
      scale_y_continuous(breaks= seq(0, 800000, by=100000))+
  labs(title = "Sale Price Vs. Age at Time of Sale", caption = "If the home was remodeled, the remodel date was used as the baseline for the age of the house")+
  xlab("Age at Time of Sale")+
  ylab("Sale Price")
