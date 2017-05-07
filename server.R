library(shiny)
shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    TempInput <- input$sliderTemp
    plot(airquality$Temp, airquality$Ozone, xlab = "Temperature",
         ylab = "Ozone", bty = "n", pch = 16, col = "blue",
         xlim = c(50, 100), ylim = c(0, 150))
         abline(lm(airquality$Ozone ~ airquality$Temp, data = airquality), col = "red", lwd = 2)
    if(input$showModel){
      MonTemp <- airquality[airquality$Month==TempInput, ]
      plot(MonTemp$Temp, MonTemp$Ozone, xlab = "Temperature",
           ylab = "Ozone", bty = "n", pch = 16, col = "blue",
           xlim = c(50, 100), ylim = c(0, 150))
      abline(lm(MonTemp$Ozone ~ MonTemp$Temp, data = MonTemp), col = "red", lwd = 2)
    }
  })
})