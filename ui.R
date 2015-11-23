shinyUI(pageWithSidebar(
        headerPanel("Regression model - Predict mpg in mtcars dataset"),
        sidebarPanel(
                radioButtons("cyl", "Number of Cylinders",
                             c("4" = 4,
                               "6" = 6,
                               "8" = 8)),
                sliderInput('wt', "Weight", min = 1.5 , max = 6 ,value = 2, value, step = 0.01),
                sliderInput('qsec', "1/4 Mile Time(Qsec)", min = 14 , max = 23 ,
                            value = 16, value, step = 0.01),
                h6('Vary the above values to see change in the predicted mpg value'),
                h6('Please see "About" for more details on this application')
                
                
        ),
        mainPanel(
                
                tabsetPanel(type = "tabs", 
                            tabPanel("Prediction", 
                                     h4('No of cylinders selected'),
                                     verbatimTextOutput("outcyl"),
                                     h4('Weight selected'),
                                     verbatimTextOutput("outwt"),
                                     h4('Qsec selected'),
                                     verbatimTextOutput("outqsec"),
                                     h2('PREDCITION'),
                                     verbatimTextOutput("outmpg")),
                            
                            
                            tabPanel("Model Parameters", 
                                     h3('Value of Co-Efficients'),
                                     h5('Intercept'),
                                     verbatimTextOutput("outcf1"),
                                     h5('Cylinder'),
                                     verbatimTextOutput("outcf2"),
                                     h5('Weight'),
                                     verbatimTextOutput("outcf3"),
                                     h5('Qsec '),
                                     verbatimTextOutput("outcf4")),
                            
                            
                            tabPanel("Model Summary", 
                                     
                                     h3('Model Summary'),
                                     verbatimTextOutput("modsum")), 
                            
                            tabPanel("About",
                                     mainPanel(
                                             includeMarkdown("About.md"))
                                     
                                     
                                     
                            )
                )
        )
))
