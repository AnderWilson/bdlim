# bdlim 0.5.0

Minor updates to allow for summary and plot.summary functions to work with bdlim1 objects. Now the bdlim1 model can be run to fit a single modification pattern and the same summary and plot functions apply.

The function bdlim1 now works with a only one group. This fits a Bayesian distributed lag model without modification.

Add new function getw to extract the posterior sample of the weight function from a bdlim1 object.

# bdlim 0.4.3

Patch to remove dependencies on dplyr and tidyr.

# bdlim 0.4.2

Bug fixes: 1) fix handling of missing data to avoid failing. 2) allow for different numbers of repeated measures of exposure by removing on instance of a hard coded number. 

Minor updates to documentation.

# bdlim 0.4.1

First CRAN release.

# bdlim 0.3.1

Update documentation.

# bdlim 0.3.0

Add logistic regression. The family parameter controls this (choices "gaussian" or "binomial"). Some minor bug fixes related to naming of group variable.

# bdlim 0.2.1

Swap order of exposures in design matrix.

# bdlim 0.2.0

Initial release on GitHub.
