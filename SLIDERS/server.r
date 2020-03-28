library(shiny)
shinyServer(function(input,output)
  {
  output$out <-renderText(paste("YOU SELECT THE VALUE :",input$slide))
})