shinyUI(fluidPage(
  titlePanel("Калькулятор квадрата числа"),
  sidebarLayout(
    sidebarPanel(
      textInput("number", "Введите число:", value = "0"),
      actionButton("submit", "Рассчитать")
    ),
    mainPanel(
      h4("Квадрат числа:"),
      verbatimTextOutput("result")
    )
  )
))
library(shiny)

shinyUI(fluidPage(
  
  
  titlePanel("Мое первое Shiny приложение"),
  
  sidebarLayout(
    sidebarPanel(
      
      textInput("text", "Введите текст:")
    ),
    mainPanel(
      
      textOutput("outputText")
    )
  )
))