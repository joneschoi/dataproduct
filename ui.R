library(shiny)
shinyUI(fluidPage(
  titlePanel("Temperature for Ozone with Month"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderTemp", "What is the Month of the Temperature?", 5, 9, value = 5),
      checkboxInput("showModel", "Plot with specific Month", value = FALSE)
    ),
    mainPanel(
      plotOutput("plot1")
    )
  ) 
))