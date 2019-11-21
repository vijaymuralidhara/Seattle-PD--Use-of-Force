#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)
library("rsconnect")
rsconnect::setAccountInfo(name='seattlepduseofforce', token='22CE6C7BA70CAA3A6A649E774E5467DC', secret='7Rew2mYkRXxObvWzSMq8NhMm2kadNU9Io/HMNNy3')
# Source the visualization code
source("Visualizations.R")

# Define UI for application
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
            htmlOutput("abus")
        )
    )
)


# Define server logic
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
        get_text_from_md_file("MDfiles/about.md")
    })

    output$abus <- renderUI({
        get_text_from_md_file("MDfiles/AbUs.md")
    })
}

# Run the application
shinyApp(ui = ui, server = server)
