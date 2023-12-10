shinyServer(function(input, output) {
  observeEvent(input$submit, {
    num <- as.numeric(input$number)
    if (!is.na(num)) {
      output$result <- renderPrint({
        num_squared <- num^2
        paste("Квадрат числа", num, "равен", num_squared)
      })
    } else {
      output$result <- renderText({
        "Пожалуйста, введите числовое значение."
      })
    }
  })
})
library(shiny)

shinyServer(function(input, output) {
  
  
  output$outputText <- renderText({
    input$text 
  })
  
})