shinyUI(pageWithSidebar(
  headerPanel("BMI Calculator"),
  sidebarPanel(
    sliderInput('age', 'Age',value = 35, min = 16, max = 90, step = 1),
    sliderInput('wt', 'Weight',value = 70, min = 20, max = 200, step = 1),
    sliderInput('ht', 'Height',value = 170, min = 100, max = 200, step = 5),
    submitButton('Submit')
  ),
  mainPanel(
    p('Your BMI'),
    textOutput('result')
  )
))