library(shiny)
library(ggplot2)
source('functions.R')

ui <- fluidPage(
  titlePanel('Arc Calculator'),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = 'width_arc', 
                    label = 'Measurement of width of curve',
                    value = 3),
      numericInput(inputId = 'height_arc',
                   label = 'Measurement of height of curve',
                   value = 1)
    ),
    mainPanel(
      plotOutput(outputId = 'arcPlot')
    )
  )
)

server <- function(input, output) {
  output$arcPlot = renderPlot({
    #width = c(0, (input$width_arc / 2), input$width_arc)
    #height = c(0, input$height_arc, 0)
    z = arcfun(input$width_arc, input$height_arc)
    t = seq(0, input$width_arc, 0.001)
    c = input$width_arc / 2 
    s = ((input$height_arc - c**2) / (input$height_arc)) / 2 
    p = s + sqrt(radius(input$width_arc, input$height_arc)**2 - (t - c)**2)
    
    plot(x = t, y = p, type = 'l', main = sprintf('Length of Arc = %f in', z), 
         xlab = 'Width (in)', ylab = 'Height (in)')
  })
}

shinyApp(ui, server)