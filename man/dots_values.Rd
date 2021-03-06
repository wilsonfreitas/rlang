% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dots.R
\name{dots_values}
\alias{dots_values}
\title{Evaluate dots with preliminary splicing}
\usage{
dots_values(..., .ignore_empty = c("trailing", "none", "all"))
}
\arguments{
\item{...}{Arguments to evaluate and process splicing operators.}

\item{.ignore_empty}{Whether to ignore empty arguments. Can be one
of \code{"trailing"}, \code{"none"}, \code{"all"}. If \code{"trailing"}, only the
last argument is ignored if it is empty.}
}
\description{
This is a tool for advanced users. It captures dots, processes
unquoting and splicing operators, and evaluates them. Unlike
\code{\link[=dots_list]{dots_list()}}, it does not flatten spliced objects, instead they
are attributed a \code{spliced} class (see \code{\link[=splice]{splice()}}). You can process
spliced objects manually, perhaps with a custom predicate (see
\code{\link[=flatten_if]{flatten_if()}}).
}
\examples{
dots <- dots_values(!!! list(1, 2), 3)
dots

# Flatten the objects marked as spliced:
flatten_if(dots, is_spliced)
}
