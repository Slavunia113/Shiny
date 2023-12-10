# Определение серверной части (Server)
server <- function(input, output) {
  # Реакция на нажатие кнопки
  observeEvent(input$plotBtn, {
    # Получаем введенные числа и преобразуем их в вектор
    numbers <- as.numeric(unlist(strsplit(input$numbers, " ")))
    
    # Проверка на корректность введенных данных (числа)
    if (!any(is.na(numbers))) {
      # Построение гистограммы
      output$histogram <- renderPlot({
        ggplot(data.frame(numbers), aes(x = numbers)) +
          geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
          labs(title = "Гистограмма введенных чисел", x = "Числа", y = "Частота")
      })
    } else {
      # Вывод сообщения об ошибке в случае некорректного ввода
      output$histogram <- renderText("Пожалуйста, введите корректные числа (разделите пробелом).")
    }
  })
}

# Сборка приложения
shinyApp(ui = ui, server = server)

