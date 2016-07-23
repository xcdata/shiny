library(shiny)
require(KernSmooth)

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
	guassian <- rnorm(1000, input$gmean, input$gsd)
	poison <- rnorm(1000, input$pmean)
	smoothScatter(guassian, poison)
  })
})
