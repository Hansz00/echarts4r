% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/append.R
\name{e_remove}
\alias{e_remove}
\alias{e_remove_serie_p}
\alias{e_remove_serie}
\title{Remove Serie}
\usage{
e_remove_serie_p(proxy, serie_name = NULL, serie_index = NULL)

e_remove_serie(proxy, serie_name = NULL, serie_index = NULL)
}
\arguments{
\item{proxy}{An echarts4r proxy as returned by \code{\link{echarts4rProxy}}.}

\item{serie_name}{Name of serie to remove.}

\item{serie_index}{Index of serie to append to (starts from 0).}
}
\description{
Remove a serie by name or precising its index.
}
\examples{
library(shiny)

ui <- fluidPage(
  actionButton("rm", "Remove z serie"),
  echarts4rOutput("plot")
)

server <- function(input, output, session){

  data <- data.frame(
    x = rnorm(10, 5, 3), 
    y = rnorm(10, 50, 12), 
    z = rnorm(10, 50, 5)
  )

  output$plot <- renderEcharts4r({
    data \%>\% 
     e_charts(x) \%>\% 
     e_scatter(y) \%>\%
     e_scatter(z)
  })

  observeEvent(input$rm, {
    echarts4rProxy("plot") \%>\% 
      e_remove_serie_p(serie_name = "z")
  })
 
}

\dontrun{shinyApp(ui, server)}

}
