library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Poison vs Guassian"),

  sidebarPanel(
    sliderInput("gmean", 
                "Mean for Guassian:", 
                min = 1,
                max = 1000, 
                value = 500),
    sliderInput("gsd", 
                "SD for Guassian:", 
                min = 1,
                max = 1000, 
                value = 500),
    sliderInput("pmean", 
                "Mean for Poisson:", 
                min = 1,
                max = 1000, 
                value = 500)
  ),

  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot"),
    tags$div(HTML("
    	<h2>Documentation</h2>
    	This App visualizes a 2D simulated dataset. The first dimension is a Guassian variable, with mean and sd controled by the first two sliders. The second dimension is a Poison variable, which lambda controled by the 3rd slider.
    "))
  )
))
