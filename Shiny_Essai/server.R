library(shiny)

server <- function(input, output,session) {
  observeEvent(input$qsuiv,
               updateRadioButtons(session,"Chx",
                                  label =sample(dataLimP$Phrases,1),
                                  choices =sample(dataLimM$Mots,input$selectNbMot) 
                                  )
               )
  observeEvent(input$selectNbMot,
               updateRadioButtons(session,"Chx",
                                  choices = sample(dataLimM$Mots,input$selectNbMot) 
                                  )   
               )
  }



