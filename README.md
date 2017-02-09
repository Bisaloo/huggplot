# huggplot

## Features

- Complete transparency: you can use it on non-white background document without it looking like crap.
- Uncluttered and minimalistic to improve legibility

## Important note: transparency and custom font support

Transparency can only be achieved if you write your plot to your disk using a device that supports it.

In particular, if you are saving your plot as a pdf, in order to keep a transparent background and use your custom font family, you must use the `cairo_pdf` device.
Fortunately, this can easily be done using the Rstudio GUI or:

```r
ggsave('plot.pdf', device = cairo_pdf, bg = "transparent")
```

## Minimal working example

First, download the theme from the github repository

```r
library(ggplot2)

source('https://raw.githubusercontent.com/Bisaloo/huggplot/master/huggtheme.R')
```

Now, it is time to try out this theme:

### Basic plot

```r
ggplot(Orange, aes(age, circumference, colour = Tree)) + geom_point() + huggtheme() + 
  labs(title = 'Growth of orange trees')
```

![example 1](./examples/plot_example_1.png)

### Line plot

```r
ggplot(ChickWeight[ChickWeight$Chick %in% seq(1:10),], aes(weight, Time, colour = Chick)) + 
  geom_line() + huggtheme() + labs(title = 'Chick growth curves')
```

![example 2](./examples/plot_example_2.png)

### Boxplot

```r
ggplot(morley, aes(as.factor(Expt), Speed)) + geom_boxplot() + huggtheme() +
  labs(title = 'Speed of light')
```  

![example 3](./examples/plot_example_3.png)


