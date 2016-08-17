# huggplot

## Minimal working example

First, download the theme from the github repository
```
library(ggplot2)

my_ggtheme <-
```

Now, it is time to try out this theme:

### Basic plot

```
ggplot(Orange, aes(age, circumference, colour = Tree)) + geom_point() + my_ggtheme() + 
  labs(title = 'Growth of orange trees')
```

![example 1](./examples/plot_example_1.png)

### Line plot

```
ggplot(ChickWeight[ChickWeight$Chick %in% seq(1:10),], aes(weight, Time, colour = Chick)) + 
  geom_line() + my_ggtheme() + labs(title = 'Chick growth curves')
```

![example 2](./examples/plot_example_2.png)

### Boxplot

```
ggplot(morley, aes(as.factor(Expt), Speed)) + geom_boxplot() + my_ggtheme() +
  labs(title = 'Speed of light')
```  

![example 3](./examples/plot_example_3.png)


