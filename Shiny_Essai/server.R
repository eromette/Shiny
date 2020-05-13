library(shiny)

server <- function(input, output,session){
  
  observe(
    output$textQ <- renderText(sample(dataLimP$Phrases,1)
                               )
    )
  
  observeEvent(input$qsuiv,
                output$textQ <- renderText(sample(dataLimP$Phrases,1)
                                           ),
                )
  
  observeEvent(input$qsuiv,
               
               updateRadioButtons(session,"Chx",
                                  label = NULL,
                                  choices =sample(dataLimM$Mots,input$selectNbMot) 
                                  )
               )
  
  eventReactive(input$selectNbMot,
               updateRadioButtons(session,"Chx",
                                  choices = sample(dataLimM$Mots,input$selectNbMot) 
                                  ) 
               )

  
  
  #observeEvent(input$register)
  
  observeEvent(input$aleat,
               output$phraseAlea <- renderText({ 
                 paste0(sample(dataLimP$Phrases,1)," ",sample(dataLimM$Mots,1))
               })
  )
  
  observeEvent(input$testChx,
               output$phraseChx <- renderText({ 
                 paste0(sample(dataLimP$Phrases,1)," ",input$Chx)
               })
  )
  
 
 
   
}
               
  




