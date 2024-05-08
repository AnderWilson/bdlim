# bdlim <img src="man/figures/logo.png" align="right" />

### Overview


**bdlim** is an R package that implements Bayesian distributed lag interaction 
models (BDLIMs). This is a developmental package to replace code in **regimes**. I am 
currently testing the package and building additional functionality. Background on the model can be found in:

* Wilson A, Chiu YM, Hsu HL, Wright RO, Wright RJ, Coull BA (2017). “Bayesian 
  distributed lag interaction models to identify perinatal windows of 
  vulnerability in children's health.”
  _Biostatistics_, *18*(3), 537–552. ([DOI: 10.1093/biostatistics/kxx002](https://doi.org/10.1093/biostatistics/kxx002),
[arXiv preprint](https://arxiv.org/abs/1612.05800))

In short, BDLIM estimated a distributed lag model (DLM) with modification by a single categorical variable. The categorical variable can be binary or more than two levels, but BDLIM is not advised when there are a large number of categories. If you are instead interested in a DLM with modification by a single continuous variable see the [```dlim```](https://cran.r-project.org/web/packages/dlim/index.html) package (see website [here](https://ddemateis.github.io/dlim/)). If you are interested in distributed lag models with heterogeneity by with multiple modifiers see the heterogeneous distributed lag model in the [```dlmtree```](https://danielmork.github.io/dlmtree) package.

This package includes several improvements over the previous software. Many of these improvements come from user feedback and more experiance applying the BDLIM to multiple datasets. These include:  

* Simpler syntax
* Updated options with some no longer recommended hyperparameter settings no longer available
* Faster with options for parallel implementation
* Summary and plot functions that provide more intuative results.


### Installation

Install from GitHub using the code below. If you want to build the vignette, use the ```devtools::install(build_vignettes = TRUE)``` option. Building the vignette will take a couple of minutes. Alternatively, you can use the online version available at [anderwilson.github.io/bdlim/articles/bdlim.html](https://anderwilson.github.io/bdlim/articles/bdlim.html). 

```r
remotes::install_github("anderwilson/bdlim", devtools::install(build_vignettes = TRUE))
```


### Use

A vignette can be accessed with the following code or accessed at [anderwilson.github.io/bdlim/articles/bdlim.html](https://anderwilson.github.io/bdlim/articles/bdlim.html). 

```r
library(bdlim)
vignette("bdlim")
```

The main function is ```bdlim4```. See the help file for that function for a detailed example. The ```summary``` and ```plot``` functions can be used to make inference on the results. Specifically:

* The model probabilities from the ```summary``` or indicate which pattern of heterogeneity is best supported by the data.
* Cumulative effect estimates are provided in the ```summary``` function output.
* The ```plot``` function show estimated distributed lag functions for each group. This returns a ggplot object that can be modified. See the help file example for ```plot.summary.bdlim4``` for an example that modifies the plot.
* Estimates of the distributed lag functions are available in the summary object but are not printed in the console. See the help file for ```summary.bdlim4``` for an example.

The example do not use parallel implementation. If you have 4 cores available (most computers do), try using the ```parallel=TRUE``` option.


