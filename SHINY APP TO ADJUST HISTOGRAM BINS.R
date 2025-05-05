install.packages("shiny")

library(shiny)

# Define UI
ui <- fluidPage(
  titlePanel("Adjust Histogram Bins"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 10)
    ),
    
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

# Define server logic
server <- function(input, output) {
  output$distPlot <- renderPlot({
    x <- mtcars$mpg
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, 
         breaks = bins, 
         col = 'skyblue', 
         border = 'white',
         xlab = "Miles Per Gallon", 
         main = "MPG Histogram")
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
