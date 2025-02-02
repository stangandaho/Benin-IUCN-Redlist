% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rl_from_assessment_id.R
\name{rl_from_assessment_id}
\alias{rl_from_assessment_id}
\title{Retrieve IUCN Red List Assessment by ID}
\usage{
rl_from_assessment_id(assessment_id)
}
\arguments{
\item{assessment_id}{Character. The unique assessment ID for the species to retrieve from the IUCN Red List.}
}
\value{
A data frame with detailed assessment information for the species, including:
\itemize{
\item \strong{Taxonomic information}: kingdom, phylum, class, order, family, genus, and scientific name
\item \strong{Assessment details}: assessment date, criteria, Red List category, population trends
\item \strong{Population and habitat details}: population size, trends, habitat description
\item \strong{Threats and conservation measures}: major threats, conservation actions, and documentation
}
}
\description{
This function retrieves detailed information from the IUCN Red List API for a specific species assessment
identified by an \code{assessment_id}. The returned data includes taxonomic details, assessment information,
population and habitat data, threats, and conservation measures.
}
\details{
This function makes an API call to the IUCN Red List service and processes the response into a
structured data frame. If the \code{assessment_id} is invalid or not found, an error message is returned.
}
\note{
Requires an IUCN Red List API token to be set as an environment variable under \code{redlist_api} with \code{\link[=rl_set_api]{rl_set_api()}} function.
}
\examples{
\dontrun{
  # Retrieve assessment information for a species by ID
  rl_from_assessment_id("1234567")
}

}
