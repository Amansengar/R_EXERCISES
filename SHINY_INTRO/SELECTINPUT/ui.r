library(shiny)
shinyUI(fluidPage(
  titlePanel("DEMO OF SELECT INPUT"),
  sidebarLayout(
    sidebarPanel(
      selectInput("FRIENDS_NAME" ,"SELECT FRIEND",c("aman","amit","kapil","akash"),selected = "amit", selectize = TRUE,multiple = TRUE)),
      mainPanel(
        textOutput("state")
      )
  )
    )
  )
