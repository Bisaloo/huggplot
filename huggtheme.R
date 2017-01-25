huggtheme <- function (base_size = 11)
{
  half_line <- base_size/2
  theme(panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background = element_rect(fill = "transparent", colour = NA),
        panel.border = element_blank(),
        panel.grid.major = element_line(colour = "grey75", size = 0.3, linetype = "dotted"),
        panel.grid.minor = element_blank(),
        
        text = element_text(family = "Fira sans", face = "plain", colour = "black",
                            size = base_size, lineheight = 0.9, hjust = 0.5, vjust = 0.5,
                            angle = 0, margin = margin(), debug = FALSE),
        
        axis.text = element_text(size = rel(0.8), colour = "grey50"),
        axis.ticks = element_line(colour = "grey50"),
        axis.line.x = element_line(colour = "grey69"),
        axis.title.x = element_text(margin = margin(t = 0.8 * half_line, b = 0.8 * half_line/2), colour = "grey22"),
        axis.line.y = element_line(colour = "grey69"),
        axis.title.y = element_text(angle = 90, margin = margin(r = 0.8 * half_line, l = 0.8 * half_line/2), colour = "grey22"),
        
        legend.key = element_rect(fill = "transparent", colour = "transparent"),
        legend.background = element_rect(fill = "transparent", colour = NA),
        legend.title = element_text(colour = "grey22"),
        legend.text = element_text(size = rel(0.8), colour = "grey50"),
        
        plot.title = element_text(size = rel(1.69), 
                                  margin = margin(b = half_line * 2.5,
                                                  t = half_line * 1.2)),
        
        complete = TRUE
        )
}
