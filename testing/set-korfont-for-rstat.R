# install.packages("ggplot2")
# load package and data
options(scipen=999)  # turn-off scientific notation like 1e+48
library(ggplot2)
theme_set(theme_bw())  # pre-set the bw theme.
data("midwest", package = "ggplot2")
# midwest <- read.csv("http://goo.gl/G1K41K")  # bkup data source

# Scatterplot
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state, size=popdensity)) + 
  geom_smooth(method="loess", se=F) + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(subtitle="Area Vs Population", 
       y="Population", 
       x="Area", 
       title="Scatterplot 산포도라고도 한다", 
       caption = "Source: midwest")

plot(gg)

### Showtext work?

install.packages('showtext')
library(showtext)
font_add_google('Nanum Pen Script', 'nanumpen')
showtext_auto()
p <- ggplot(data=mtcars, aes(x=disp, y=mpg)) + geom_point()
p + annotate(geom='text', x=275, y=28, size=15, family='nanumpen', label='연습입니다')