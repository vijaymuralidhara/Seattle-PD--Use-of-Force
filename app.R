#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(htmltools)

source("Visualizations.R")

# Define UI for application that draws a histogram
ui <- fluidPage(

    titlePanel("Seattle Crime: Use of Force Among Seattle PD"),
    
    tabsetPanel(
        type = "tabs", id = "nav_bar",
        tabPanel(
            "Introduction",
            htmlOutput("intro")
        ),
        tabPanel(
            "Background and Research Questions",
            htmlOutput("bandr")
        ),
        tabPanel(
            "Graphs",
            radioButtons("graph", label = h3("Use of Force vs:"),
                         choices = list("Officer Race" = "race",
                                        "Officer Gender" = "gender",
                                        "Officer Per Precinct" = "precinct",
                                        "Officer Years on Force" = "exp_force",
                                        "Reported Time of Incidences" = "time"), 
                         selected = "race"),
            
            hr(),
            fluidRow(column(3, plotOutput("rq1", width = "500%")))
        ),
        tabPanel(
            "Conclusion",
            htmlOutput("conc")
        ),
        tabPanel(
            "About the Tech",
            htmlOutput("abtt")
        ),
        tabPanel(
            "About Us",
            htmlOutput("AbUs")
        )
    )
)


# Define server logic required to draw a histogram
server <- function(input, output) {
    output$intro <- renderUI({
        get_text_from_md_file("MDfiles/intro.md")})
    
    output$bandr <- renderUI({
        get_text_from_md_file("MDfiles/bandr.md")
    })
    
    output$rq1 <- renderPlot({
        switch(input$graph,
               "race" = plot(bar),
               "precinct" = plot(bar2),
               "gender" = plot(bar3),
               "exp_force" = plot(plot),
               "time" = plot(plot2))}, 
        height = 400, width = 1100
        )
    
    output$conc <- renderUI({
        get_text_from_md_file("MDfiles/conclusion.md")
    })
    
    output$abtt <- renderUI({
        get_text_from_md_file("MDfiles/abtt.md")
    })
    
    output$AbUs <- renderUI({
        get_text_from_md_file("MDfiles/AbUs.md")
    })
}

# Run the application
shinyApp(ui = ui, server = server)
