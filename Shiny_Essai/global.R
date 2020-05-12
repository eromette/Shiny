library(shiny)

dataLimP <- read.csv("LimitePhrase.csv",sep=";",header=TRUE);dataLimP
dataLimM <- read.csv("LimiteMot.csv",sep=";",header=TRUE);dataLimM

source('ui.R', local = TRUE)
source('server.R')

texte = ""

shinyApp(
  ui = ui,
  server = server
)
  