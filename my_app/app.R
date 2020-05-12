library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel(h1("My Shiny App")),
  
  sidebarLayout(
    sidebarPanel(
      h1("Installation"), 
      p("Some more text CRAN...."),
      img(src = "my_image.png", height = 50, width = 50)
      ),
    mainPanel(
      h1("Introducing Shiny"),
      p("Lot of text"),
      h2("Features"),
      p("- Lot of bullets")
    )
  )
)

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)