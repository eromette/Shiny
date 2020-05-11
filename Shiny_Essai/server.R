library(shiny)
library(shinyjs)

server <- function(input, output) {
  
  #output$Phrase <- renderText({
  #  paste0(phrase)
  #})
  
  #observeEvent(input$qsuiv,{js$reset()})
  
  x <- input$Chx
  
  eventReactive(input$qsuiv,
  updateRadioButtons(session, "Chx",
                     choices = sample(dataLimM$Mots,4),
                     selected = x
  ))
  
  
}

