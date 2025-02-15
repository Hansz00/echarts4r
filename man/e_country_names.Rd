% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{e_country_names}
\alias{e_country_names}
\alias{e_country_names_}
\title{Country names}
\usage{
e_country_names(data, input, output, type = "iso2c", ...)

e_country_names_(data, input, output = NULL, type = "iso2c", ...)
}
\arguments{
\item{data}{Data.frame in which to find column names.}

\item{input, output}{Input and output columns.}

\item{type}{Passed to \link[countrycode]{countrycode} \code{origin} parameter.}

\item{...}{Any other parameter to pass to \link[countrycode]{countrycode}.}
}
\description{
Convert country names to echarts format.
}
\details{
Taiwan and Hong Kong cannot be plotted.
}
\examples{
cns <- data.frame(country = c("US", "BE"))

# replace
e_country_names(cns, country)
  
# specify output
e_country_names(cns, country, country_name)
  

}
