% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/includeSourceDocuments.R
\name{includeSourceDocuments}
\alias{includeSourceDocuments}
\title{Include source files such as Rmd in an Rmd->HTML document}
\usage{
includeSourceDocuments(...)
}
\arguments{
\item{\code{...}}{Character strings with path and file name of a file to embed.
The path should be relative to where the compilation of the Rmd file occurs, 
which typically will be in the same directory as the Rmd file.additional character strings naming files.}
}
\value{
A character string of HTML markup containing the set of links and the
base64 encoded embedded files.  The string may be quite long.
}
\description{
This function, when invoked in an Rmd document, will produce links to embedded
base64 encodings of source documents.  This allows you to include source files
(such as Rmd, csv, etc.) inside the HTML file, so that only the HTML file need 
be uploaded to sites such as RPubs.com or a course management system. By default, 
the .Rmd document which is being compiled will be included.  You can also list files 
by name.
}
\details{
Use this function in an R chunk in an Rmd file.  The chunk should 
use \code{results="asis"}.
Do not embed the HTML file in itself --- just the Rmd and whatever other
auxiliary files you want to package up with the HTML.
}
\examples{
\dontrun{
# in an R chunk in the Rmd file
includeSourceDocuments()
includeSourceDocuments("sourceFile.Rmd","myData.csv","mySpreadsheet.xlsx")
}
}

