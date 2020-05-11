library(shiny)


#colonne : [,X]
#ligne : [X,]

ui <- fluidPage(
  radioButtons("Chx",sample(dataLimP$Phrases,1),sample(dataLimM$Mots,4)),
  actionButton("qsuiv","Question suivante")
  
)
