library(shiny)
shinyServer(function(input,output)
  {
  output$state <-renderText(input$FRIENDS_NAME)
})
