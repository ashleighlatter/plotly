library(plotly)

# Regular scatterplot
p <- plot_ly(
  data = iris,
  x = ~Sepal.Length,
  y = ~Sepal.Width,
  color = ~Species,
  colors = c("#AAA5CC", "#F94687", "#84E3F9"),
  type = "scatter",
  mode = "markers"
) %>% 
  layout(
    legend = list(title = list(text = "Species")),
    xaxis = list(title = "Sepal Length", titlefont = list(size = 13)),
    yaxis = list(title = "Sepal Width", titlefont = list(size = 13))
  )

p

# Add buttons
p %>% 
  config(
    modeBarButtonsToAdd = 'toggleSpikelines'
  )

p %>% 
  config(
    modeBarButtonsToAdd = list(
      'drawline',
      'drawrect',
      'drawcircle',
      'drawopenpath',
      'drawclosedpath',
      'eraseshape'
    )
  )

# Remove buttons
p %>% 
  config(
    modeBarButtonsToRemove = list(
      'toImage',
      'zoom',
      'pan',
      'select2d',
      'lasso2d'
    )
  )

# Remove plotly logo
p %>% 
  config(displaylogo = FALSE)

# Remove modebar
p %>% 
  config(displayModeBar = FALSE)
