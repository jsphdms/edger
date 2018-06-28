
<!-- README.md is generated from README.Rmd. Please edit that file -->
edger
=====

Use edger to solve triangular edge matching puzzles like this one using a [backtracking](https://en.wikipedia.org/wiki/Backtracking) algorithm:

<img src="man/figures/IMG_20180624_214503455.jpg" width="30%" style="display: block; margin: auto;" />

Installation
------------

Install edger from github with:

``` r
# install.packages("devtools")
devtools::install_github("jsphdms/edger")
```

Example
-------

Visually inspect solutions like so:

``` r
library(edger)
edge_plot(tiles = list(c("green", "red", "yellow")
                       ,c("green", "yellow", "white")
                       ,c("white", "white", "blue")
                       ,c("blue", "black", "white")
                       ,c("white", "green", "red")
                       ,c("black", "green", "red")
                       ,c("green", "black", "black")  # Bottom row

                       ,c("yellow", "green", "white")
                       ,c("blue", "yellow", "red")
                       ,c("green", "red", "black")
                       ,c("blue", "white", "blue")
                       ,c("white", "black", "blue")   # Second row up

                       ,c("red", "yellow", "white")
                       ,c("yellow", "black", "blue")
                       ,c("green", "yellow", "black") # Third row up

                       ,c("green", "black", "red")))  # Top row
```

![](README-example-1.png)
