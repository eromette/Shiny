library(shiny)
library(shinyjs)

#colonne : [,X]
#ligne : [X,]

ui <- fluidPage(
  #useShinyjs(),                                       
  #extendShinyjs(text = jsResetCode), 
  #radioButtons("Chx",phrase,mot),
  radioButtons("Chx",sample(dataLimP$Phrases,1),sample(dataLimM$Mots,4)),
  actionButton("qsuiv","Question suivante")
  
)
