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
                         
                                       column(3,
                                              sidebarPanel(width=80,
                                                           
                                                           tags$h2("Jeu",
                                                                   style="color:blue",
                                                                   align="center"),
                                                           
                                                           textOutput("textQ"),
                                                           
                                                           radioButtons("Chx",
                                                                        label = NULL,
                                                                        choices = sample(dataLimM$Mots,4),
                                                                        selected = 1
                                                                        ),
                                                           
                                                           actionButton("qsuiv",
                                                                        "Nouvelle donne",
                                                                        align="center"),
                                                           )
                                              ),
                                       
                                       column(5,offset=4,
                                              sidebarPanel(width=200,
                                             
                                                           tags$h3("Phrases enregistrées",
                                                                   style="color:blue",
                                                                   align="center"),                                            
                                                           ),
                                              verbatimTextOutput("phraseReg"),
                                              
                                              verbatimTextOutput("phraseChx"),
                                              
                                              verbatimTextOutput("phraseAlea"),
                                              
                                              actionButton("testChx",
                                                           "Tester une phrase avec le choix"),
                                              
                                              actionButton("aleat",
                                                           "Tester une phrase aléatoire")
                                              ),
                                       ),
                                       
                                     fluidRow(
                                       column(12,offset=60,
                                              actionButton("register",
                                                           "Enregistrer la phrase")
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
                )

    