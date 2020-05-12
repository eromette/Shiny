library(shiny)
library(shinythemes)


ui = tagList (
  shinythemes::themeSelector(),
  navbarPage(
    theme = "cerulean",  # <--- To use a theme, uncomment this
    "ISARA",
    #tabsetPanel(id="tabset",
    tabPanel("Jeu",
      sidebarPanel("Bonjour et Bienvenue"
      ),
      mainPanel(
        tags$h1("Limite Limite Isariens",style="color:black", align="center"),
        column(3,offset=1,
        sidebarPanel(width=80,
        tags$h2("Jeu",style="color:black",align="center"),
        radioButtons("Chx",sample(dataLimP$Phrases,1),sample(dataLimM$Mots,4)),
        actionButton("qsuiv","Question suivante",align="center"),
              ),
        actionButton("register","Enregistrer la phrase",align="center"),
                        
                         )
      )
                ),
  tabPanel("Paramètres", "This panel is intentionally left blank"),
  tabPanel("Infos", "Cette application est un jeu basé sur le système du Limite Limite mais sur le thème de l'ISARA") 
)
)
    