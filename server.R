

library(shiny)

shinyServer(function(input,output){
  
calc_sum <- reactive({
  
  if(input$Age <= 18 && input$Month <= 2)
    calc_sum <- (300*.13) +300  - 50
  else if(input$Age <= 18 && input$Month <=4)
   calc_sum <- (300*.13)+300 - 25
  else if(input$Age <=18 && input$Month < 7)
    calc_sum  <- (300*.13) + 300
  else if (input$Age <= 18 && input$Month >7)
    calc_sum <- (300*.13) + 300 + (300*.15)
    
  else if(input$Age <= 25 && input$Month <= 2)
    calc_sum <- (350*.13) +350  - 50
  else if(input$Age <= 25 && input$Month <=4)
    calc_sum <- (350*.13)+350 - 25
  else if(input$Age <=25 && input$Month < 7)
    calc_sum  <- (350*.13) + 350
  
  else if(input$Age <= 49 && input$Month <= 2)
    calc_sum <- (200*.13) +200  - 50
  else if(input$Age <= 49 && input$Month <=4)
    calc_sum <- (200*.13)+200 - 25
  else if(input$Age <=49 && input$Month < 7)
    calc_sum  <- (200*.13) + 200
  else 
    calc_sum <- ("Registeration Closed")
  
  
  
})
  
output$text1 = calc_sum

  
})


