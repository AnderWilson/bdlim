% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.summary.bdlim4.R
\name{plot.summary.bdlim1}
\alias{plot.summary.bdlim1}
\title{Plot for Summary of BDLIM (summary.bdlim1 version)}
\usage{
\method{plot}{summary.bdlim1}(x, ...)
}
\arguments{
\item{x}{An object of class summary.bdlim1.}

\item{...}{Not used.}
}
\value{
An ggplot2 figure.
}
\description{
Plot for Summary of BDLIM (summary.bdlim1 version)
}
\examples{
\donttest{

# run BDLIM with modification by ChildSex
fit_sex <- bdlim4(
  y = sbd_bdlim$bwgaz,
  exposure = sbd_bdlim[,paste0("pm25_",1:37)],
  covars = sbd_bdlim[,c("MomPriorBMI","MomAge","race","Hispanic",
                                      "EstMonthConcept","EstYearConcept")],
  group = as.factor(sbd_bdlim$ChildSex),
  df = 5,
  nits = 5000,
  parallel = FALSE
)

# show model comparison results
fit_sex

#summarize results
sfit_sex <- summary(fit_sex)

# graph the estimated distributed lag functions for each group
plot(sfit_sex)

# can save plot as an object and modify with ggplot2
library(ggplot2)
plt <- plot(sfit_sex)
plt + ggtitle("My plot with BDLIM") +
 ylab("Estimated expected difference in\nBWGAZ per 1 ug/m3 increase in exposure")

# the summary file has the data to make this plot
head(sfit_sex$dlfun)

}
}
