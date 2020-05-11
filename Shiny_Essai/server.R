library(shiny)

server <- function(input, output,session) {
  
  #output$Phrase <- renderText({
  #  paste0(phrase)
  #})
  
  observeEvent(input$qsuiv,
               updateRadioButtons(session,"Chx",
                                  label =sample(dataLimP$Phrases,1),
                                  choices =sample(dataLimM$Mots,4) )
                
)}



