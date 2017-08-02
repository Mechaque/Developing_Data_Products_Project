

library(shiny)

shinyUI(fluidPage(

  titlePanel("Tuitions Fees Calculator"),
  
  sidebarLayout(
    sidebarPanel(

      numericInput("Age", "Enter Age", 18, min = 18, max = 55, step = 1),
      numericInput("Month", "Enter registered Month", 1, min = 1, max = 12, step = 1),
      h3("Enter the number coresponding to the registered month, For
example: january would be 1, and February 2 and so on ")
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      h2("Calculator"),
      h3("HST : 13 %"),
      h3("late registration fee 25%"),
      h3( textOutput("text1")),
      
      h4("Please read the app documentation below  for more information on how to operate it)")
    )
  )
))


# Documentation

