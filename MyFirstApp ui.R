library(shiny)
library(ggplot2)

# Определение интерфейса (UI)
ui <- fluidPage(
  # Текстовое поле для ввода чисел
  textInput("numbers", "Введите числа (разделите пробелом):"),
  
  # Кнопка для построения графика
  actionButton("plotBtn", "Построить график"),
  
  # Место для вывода графика
  plotOutput("histogram")
)
