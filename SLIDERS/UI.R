library(shiny)
shinyUI(fluidPage(
  titlePanel("DEMO OF SLIDERS"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("slide","SELECT VALUE FROM SLIDER",min = 0,max = 25,value = 2 animate =TRUE,step =1.5)
    ),
    mainPanel(
      textOutput("out")
    )
  )
))