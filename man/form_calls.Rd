% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formula.R
\name{form_calls}
\alias{form_calls}
\title{Strip Function calls from Formula}
\usage{
form_calls(tm, i)
}
\arguments{
\item{tm}{The terms structure returned after applying \code{term} to a formula}

\item{i}{The index of the response attribute}
}
\value{
A list of calls that either add or subtract variables to the transform
}
\details{
As part of a formula, the user may include calls that select groups
of variables. This collection of function is detailed in \link{column-selectors}.
}
