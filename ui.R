shinyUI(fluidPage(
  
  titlePanel("Blood Pressure Checker"),
  
  sidebarLayout(sidebarPanel(
    
    numericInput(
      inputId = "systolic",
      label = strong("Systolic Reading (mmHg):"),
      value= 120,
      min = 70, max= 190,step=1
      ),
    
    numericInput(
      inputId = "diastolic",
      label = strong("Diastolic Reading (mmHg):"),
      value= 80,
      min = 40, max = 100,step=1
      ),
    
    submitButton('Submit')
    
    ),
    
    mainPanel(
      h3('Results'),
      h4('You entered blood pressure readings:'),
      verbatimTextOutput("input"),
      h4('And your blood pressure is'),
      uiOutput("result")
      )    
    )
  ))