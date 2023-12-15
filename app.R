#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#



# Define UI for application that draws a histogram



ui <- fluidPage(
  
  tags$head(
    tags$style(HTML("
      body {
        background-color:#34495E; 
      }
    "))
  ),
  
  navbarPage(
    title = tags$img(src = "logo-png.png", 
                     width = "100%",  # Occupe toute la largeur
                     height = "100%", # Occupe toute la hauteur
                     style = "max-width: none;"),
    tabPanel("A propos", icon = icon("home")),
    tabPanel("Repartition des crimes par zone", icon = icon("globe"), lib = "font-awesome"),
    tabPanel("Nombre de crime par zone", icon = icon("map-pin")
    )
  ),
  
  sidebarLayout(
    sidebarPanel(),
    
    mainPanel()
    
  )
)

  
  # Define server logic required to draw a histogram
  server <- function(input, output) {
    
    
  }
  
  # Run the application 
  shinyApp(ui = ui, server = server)
  