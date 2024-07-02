library(dplyr)
library(plotly)

# Edit title for text, axes and legend item names (not legend title)
# Drag and move legend
plot_ly(
  data = iris,
  x = ~Sepal.Length,
  y = ~Sepal.Width,
  color = ~Species,
  type = "scatter",
  mode = "markers"
) %>% 
  layout(
    title = "Iris Sepal Length vs Width",
    legend = list(title = list(text = "Species"))
  ) %>% 
  config(
    editable = TRUE) # allow editing

# Turn off dragging of legend
plot_ly(
  data = iris,
  x = ~Sepal.Length,
  y = ~Sepal.Width,
  color = ~Species,
  type = "scatter",
  mode = "markers"
) %>% 
  layout(
    title = "Iris Sepal Length vs Width",
    legend = list(title = list(text = "Species"))
  ) %>% 
  config(editable = TRUE, edits = list(legendPosition = FALSE))

# Move premade shapes
plot_ly(
  data = iris,
  x = ~Sepal.Length,
  y = ~Sepal.Width,
  color = ~Species,
  type = "scatter",
  mode = "markers"
) %>% 
  layout(
    title = "Iris Sepal Length vs Width",
    legend = list(title = list(text = "Species")),
    shapes = list(
      # Create a line
      list(
        type = "line",
        line = list(color = "pink"),
        x0 = 0.5, y0 = 0,
        x1 = 0.5, y1 = 1,
        xref = "paper",
        yref = "paper"
      ),
      # Create a rectangle
      list(
        type = "rect",
        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
        x0 = "5", x1 = "6", xref = "x",
        y0 = 2, y1 = 3, yref = "y"
      )
    )
  ) %>% 
  config(edits = list(shapePosition = TRUE)) # allow dragging of line and rectangle

# Draw and reposition shapes
plot_ly(
  data = iris,
  x = ~Sepal.Length,
  y = ~Sepal.Width,
  color = ~Species,
  type = "scatter",
  mode = "markers"
) %>% 
  layout(
    title = "Iris Sepal Length vs Width",
    legend = list(title = list(text = "Species"))
  ) %>% 
  config(
    editable = TRUE, 
    edits = list(shapePosition = TRUE),  # allow dragging of shapes
    # add buttons for drawing new shapes
    modeBarButtonsToAdd = list(
      'drawline', 
      'drawopenpath', 
      'drawclosedpath', 
      'drawcircle', 
      'drawrect', 
      'eraseshape'
    )
  )
