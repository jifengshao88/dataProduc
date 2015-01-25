
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Calculate Your Body Mass Index"),
  
  h3("Usage:"),
  h3("This application is used to calculate your BMI and BMI Category based on your height and weight. Please
     enter your height in feet and inch, and enter your weight in pound. For example, if you are 6 feet and 2 
     inch high and 180 pound weight, enter 6 into the Feet box and 2 into the INCH box and 180 into Weight. 
     And then click Calculate BMI button, your BMI and BMI Category will be shown."),
  

  fluidRow(
    br(),
    h2("Please enter your height and weight:")),
  fluidRow(
    column(3, numericInput("feet", label=h3("Feet"), value=1, min=1)),
    column(3, numericInput("inch", label=h3("Inch"), value=0)),
    column(3, numericInput("pound", label=h3("Weight (Pound)"), value=1, min=1))),
  fluidRow(
    br(),
    submitButton(h2("Calculate BMI"))),
  fluidRow(
    column(3, h3("Your BMI:"), verbatimTextOutput("BMI"), h3("Your BMI Category:"),
           verbatimTextOutput("BMICategory")))
))
