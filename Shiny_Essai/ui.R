library(shiny)
library(shinythemes)

#colonne : [,X]
#ligne : [X,]

ui <- fluidPage(theme=shinytheme("sandstone"),
  fluidRow(
    tabPanel("Jeu",
             tags$h1("Limite Limite Isariens",style="color:green", align="center")),
    column(3,offset=1,
                    sidebarPanel(width=80,
                                 tags$h2("Jeu",style="color:blue",align="center"),
                                 radioButtons("Chx",sample(dataLimP$Phrases,1),sample(dataLimM$Mots,4)),
                                 actionButton("qsuiv","Question suivante",align="center"),
                                 ),
                    actionButton("register","Enregistrer la phrase",align="center")),
    column(3,offset=4,
                    sidebarPanel(width=200,
                                 tags$h3("Phrases enregistrées",style="color:blue",align="center"),
                                 )
                    ),
    tabPanel("Paramètres",
             )
    )
  )
    