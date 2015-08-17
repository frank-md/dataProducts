
library(UsingR)

shinyServer(  
  function(input, output) {
  output$input <- renderText({
    paste0(input$systolic,"/",input$diastolic)
  })
  output$result <- renderText({
    s = input$systolic
    d = input$diastolic
    if (s <= 90 || d <= 60) msg ="<span style='color: pink'> LOW </span>"
    else if (s >140 || d >90) msg ="<span style='color: blue'> HIGH</span>"
    else  msg ="<span style='color: green'> NORMAL </span>"
    
    paste0("<strong>",msg,"</strong>")
  })
  
  }
)