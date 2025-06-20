% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bdlim1_logistic.R
\name{bdlim1_logistic}
\alias{bdlim1_logistic}
\title{Fit the BDLIM model with 1 pattern of modification with logistic regression}
\usage{
bdlim1_logistic(
  y,
  exposure,
  covars,
  group,
  id = NULL,
  w_free,
  b_free,
  df,
  nits,
  nburn = round(nits/2),
  nthin = 1,
  progress = TRUE
)
}
\arguments{
\item{y}{A vector of binary outcomes}

\item{exposure}{A matrix of exposures with one row for each individual}

\item{covars}{A matrix or data.frame of covariates This should not include the grouping factor (see group below). This may include factor variables.}

\item{group}{A vector of group memberships. This should be a factor variable.}

\item{id}{An optional vector of individual IDs if there are repeated measures or other groupings that a random intercept should be included for. This must be a factor variable.}

\item{w_free}{Logical indicating if the weight functions are shared by all groups (FALSE) or group-specific (TRUE).}

\item{b_free}{Logical indicating if the effect sizes are shared by all groups (FALSE) or group-specific (TRUE).}

\item{df}{Degrees of freedom for the weight functions}

\item{nits}{Number of MCMC iterations.}

\item{nburn}{Number of MCMC iterations to be discarded as burn in. The default is half if the MCMC iterations. This is only used for WAIC in this function but is passed to summary and plot functions and used there.}

\item{nthin}{Thinning factors for the MCMC. This is only used for WAIC in this function but is passed to summary and plot functions and used there.}

\item{progress}{Logical indicating if a progress bar should be shown during MCMC iterations. Default is TRUE.}
}
\value{
A list with posteriors of parameters
}
\description{
Fit the BDLIM model with 1 pattern of modification with logistic regression
}
