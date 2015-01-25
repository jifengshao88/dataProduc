
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

# Function to Calculate BMI

BMI <- function (feet, inch, pound) {
  round(pound/(feet*12.0+inch)^2*703.0, digit=1)
}

BMICategory <- function (feet, inch, pound) {
  b <- pound/(feet*12+inch)^2*703
  if (b < 18.5 ) {c <- 'Underweight'}  
  else if (b <= 24.9) {c <- 'Normal'} 
  else if (b <= 29.9) {c<- 'Overweight'} 
  else {c <- 'Obese'}
  return(c)
}

shinyServer(function(input, output) {
  output$BMI <- renderPrint({BMI(input$feet, input$inch, input$pound)})
  output$BMICategory <- renderPrint({BMICategory(input$feet, input$inch, input$pound)})
})
