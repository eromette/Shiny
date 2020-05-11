library(shiny)

setwd("C:/Users/axelf/Desktop/Codage/OPEN/GitHub/Shiny/Shiny_Essai")
#jsResetCode <- "shinyjs.reset = function() {history.go(0)}"

dataLimP <- read.csv("LimitePhrase.csv",sep=";",header=TRUE);dataLimP
dataLimM <- read.csv("LimiteMot.csv",sep=";",header=TRUE);dataLimM

#mot <- sample(dataLimM$Mots,4);mot
#phrase <- sample(dataLimP$Phrases,1);phrase

source('ui.R', local = TRUE)
source('server.R')
  

shinyApp(
  ui = ui,
  server = server
)
  