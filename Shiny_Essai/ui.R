library(shiny)
library(shinythemes)

#colonne : [,X]
#ligne : [X,]

ui <- fluidPage(theme=shinytheme("simplex"),
    
                tabsetPanel(id="tabset",
                
                            tabPanel("Jeu",
                                     fluidRow(
                                       tags$h1("Limite Limite Isarien",
                                               style="color:green", 
                                               align="center"),
                         
                                       column(3,offset=1,
                                              sidebarPanel(width=80,
                                                           
                                                           tags$h2("Jeu",
                                                                   style="color:blue",
                                                                   align="center"),
                                                           
                                                           radioButtons("Chx",
                                                                        sample(dataLimP$Phrases,1),
                                                                        sample(dataLimM$Mots,4)),
                                                           
                                                           actionButton("qsuiv",
                                                                        "Question suivante",
                                                                        align="center"),
                                                           )
                                              ),
                                       
                                       column(3,offset=4,
                                              sidebarPanel(width=200,
                                             
                                                           tags$h3("Phrases enregistrées",
                                                                   style="color:blue",
                                                                   align="center"),                                            
                                                           )
                                              ),
                                     ),
                                       
                                     fluidRow(
                                       column(12,offset=60,
                                              actionButton("register","Enregistrer la phrase")
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
                         )
                )

    