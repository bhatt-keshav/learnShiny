library(shiny)
# library(rstudioapi)
# rstudioapi::getActiveDocumentContext()$path
setwd('C:/learnShiny')

# Define UI ----
ui <- fluidPage(
  titlePanel(h1("censusVis")),
  fluidRow(
    column(3,
           p("Create demographic maps with information form the 2010 US 
             census"),
           br(), 
           selectInput("select", strong("Choose a variable to display"), 
                       choices = list("Pc white" = 1, "Pc black" = 2,
                                      "Pc hisp" = 3, "Pc Asian" = 4)
                       , selected = 1)),
    br(),
    sliderInput("slider1", strong("Range of interest"),
                min = 0, max = 100, value = 0)
  ),
  fluidRow(
    br(), br(), br(), br(), 
    column(5, 
           selectInput("select1", ("Choose a var to disp"), 
                       choices = list("Pc white" = 1, "Pc black" = 2,
                                      "Pc hisp" = 3, "Pc Asian" = 4)
                       , selected = 1)),
    column(5, 
           selectInput("select1", ("Choose a var to disp"), 
                       choices = list("Pc white" = 1, "Pc black" = 2,
                                      "Pc hisp" = 3, "Pc Asian" = 4)
                       , selected = 1))
  )
)
# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)

