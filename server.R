library(markdown)
model<-lm(mpg~cyl+wt+qsec, data = mtcars)
df1<-mtcars[1,]

shinyServer(
        function(input, output) {
                
                output$outcyl = renderPrint({input$cyl})
                output$outwt = renderPrint({input$wt})
                output$outqsec = renderPrint({input$qsec})
                
                output$outcf1 = renderPrint({model$coefficients[[1]]})
                output$outcf2 = renderPrint({model$coefficients[[2]]})
                output$outcf3 = renderPrint({model$coefficients[[3]]})
                output$outcf4 = renderPrint({model$coefficients[[4]]})
                output$modsum = renderPrint({summary(model)})
                
                output$outmpg <- renderPrint({ 
                        
                        df1$cyl <- as.numeric(input$cyl)
                        df1$wt <- input$wt
                        df1$qsec <- input$qsec
                        df1$predicted<-predict(model, newdata=df1)
                        paste("The predicted MPG is  :", df1$predicted)})
                
                
        }
        
)
