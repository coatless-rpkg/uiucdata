
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/coatless/uiucdata.svg?branch=master)](https://travis-ci.org/coatless/uiucdata)[![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/uiucdata)](http://www.r-pkg.org/pkg/uiucdata) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/uiucdata)](https://cran.r-project.org/package=uiucdata)

`uiucdata`
==========

The goal of `uiucdata` is to provide data sets available at the [University of Illinois at Urbana-Champaign (UIUC)](http://illinois.edu/) to a diverse group of individuals with a low barrier for entry.

Installation
------------

You can install `uiucdata` from github with:

``` r
# install.packages("devtools")
devtools::install_github("coatless/uiucdata")
```

Example
-------

There are two ways to access the data contained within this package.

The first is to load the package itself and type the name of a data set. This approach takes advantage of *R*'s lazy loading mechansim, which avoids loading the data until it is used in *R* session. For details on how lazy loading works, please see [Section 1.17: Lazy Loading](https://cran.r-project.org/doc/manuals/r-release/R-ints.html#Lazy-loading) of the [R Internals](https://cran.r-project.org/doc/manuals/r-release/R-ints.html) manual.

``` r
# Load the `uiucdata` package
library("uiucdata")

# See the first 10 observations of the `fall_enrolled_ranking` dataset
head(fall_enrolled_ranking)

# View the help documentation for `fall_enrolled_ranking`
?fall_enrolled_ranking
```

The second approach is to use the `data()` command to load data on the fly without and type the name of a data set.

``` r
# Loading `fall_enrolled_ranking` without a `library(ucidata)` call
data("fall_enrolled_ranking", package = "uiucdata")

# See the first 10 observations of the `fall_enrolled_ranking` dataset
head(fall_enrolled_ranking)

# View the help documentation for `fall_enrolled_ranking`
?fall_enrolled_ranking
```

Included Data Sets
------------------

The following data sets are included in the `ucidata` package:

-   [Division of Management Information](http://www.dmi.illinois.edu/)
    -   [Student Enrollment by Curriculum and Class Level](http://www.dmi.illinois.edu/stuenr/#class)
-   [Freedom of Information Data Sets](https://www.uillinois.edu/cms/One.aspx?portalId=1324&pageId=171041)
    -   Graybook and Non-graybook Financials
    -   Grade Distribution Data
    -   Crime Statistics

Build Scripts
-------------

Want to see how each data set was imported? Check out the [`data-raw`](https://github.com/coatless/uiucdata/tree/master/data-raw) folder!
