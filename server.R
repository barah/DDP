shinyServer(
  function(input, output) {
    dataInput <- reactive({
      age <- input$age
      wt <- input$wt
      ht <- input$ht
      bmi = wt/((ht/100)^2)
      return(paste("BMI=", round(bmi,1)))
    })
   
    
    output$result  <- renderText(dataInput())

  })