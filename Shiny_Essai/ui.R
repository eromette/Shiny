library(shiny)
library(shinythemes)

#colonne : [,X]
#ligne : [X,]


ui = tagList (
  #shinythemes::themeSelector(),
  navbarPage(
    #theme = "yeti",  # <--- To use a theme, uncomment this
    "ISARA",
    #tabsetPanel(id="tabset",
                            tabPanel("Jeu",
                                     sidebarPanel("Bonjour et Bienvenue"
                                     ),
                            mainPanel(
                                tags$h1("Limite Limite Isarien",
                                         style="color:black", 
                                          align="center"),
                                
                              
                                sidebarPanel(width=80,
                                tags$h2("Jeu",
                                        style="color:black",
                                        align="center"),
                                  radioButtons("Chx",
                                  sample(dataLimP$Phrases,1),
                                  sample(dataLimM$Mots,4),
                                  ),
                                
                                  
                                  fluidRow(
                                    column(12,offset=60,                         
                                  actionButton("qsuiv",
                                                "Question suivante",
                                                align="center"),
                                                           ))),
                                              
                                  
                                  sidebarPanel(width=80,
                                  tags$h3("Phrases enregistrées",
                                            style="color:black",
                                            align="center"),                                            
                                                      
                                        
                            
                                  fluidRow(
                                  column(12,offset=60,
                                  actionButton("register","Enregistrer la phrase")
                                              )
                                       )
                            )
                            )
                            
                                     ),
                
                            tabPanel("Paramètres",
                         
                                     tags$h1("Paramétrage du jeu",
                                             style="color:black",
                                             align="center"),
                         
                                     column(3,offset=15,
                                
                                            sliderInput("selectNbMot", 
                                                        "Nombre de mot disponibles :", 
                                                        value = 4,
                                                        min = 2, 
                                                        max = 7)
                                            )
                                     ),
                            tabPanel("Infos", "Cette application est un jeu basé sur le système du Limite Limite mais sur le thème de l'ISARA") 
                            #)
                
)
)
    