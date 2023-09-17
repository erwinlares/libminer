
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->
<!-- badges: end -->

The goal of libminer is to help you understand your libraries better

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("erwinlares/libminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(libminer)
## basic example code

lib_summary()
#>                                                                                        library
#> 1                        /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/library
#> 2 /private/var/folders/nl/ygr54ppn1w9_p1y69y7j_g_0pgsz0m/T/RtmplaBfgi/temp_libpath917d66ed2ce2
#>   n_packages
#> 1        255
#> 2          1

#Also with computed file sizes
lib_summary(TRUE)
#>                                                                                        library
#> 1                        /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/library
#> 2 /private/var/folders/nl/ygr54ppn1w9_p1y69y7j_g_0pgsz0m/T/RtmplaBfgi/temp_libpath917d66ed2ce2
#>   n_packages  lib_size
#> 1        255 614504104
#> 2          1     14510
```
