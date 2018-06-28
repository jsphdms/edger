
<!-- README.md is generated from README.Rmd. Please edit that file -->
edger
=====

<img src="man/figures/frog_puzzle.jpg" width="30%" style="display: block; margin: auto;" />

The goal of edger is to ...

<img src="man/figures/IMG_20180624_214503455.jpg" width="30%" style="display: block; margin: auto;" />

Installation
------------

You can install edger from github with:

``` r
# install.packages("devtools")
devtools::install_github("jsphdms/edger")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
edger::edge_plot(tiles = list(c("green", "red", "yellow")
                         ,c("green", "yellow", "white")
                         ,c("white", "white", "blue")
                         ,c("blue", "black", "white")
                         ,c("white", "green", "red")
                         ,c("black", "green", "red")
                         ,c("green", "black", "black")

                         ,c("yellow", "green", "white")
                         ,c("blue", "yellow", "red")
                         ,c("green", "red", "black")
                         ,c("blue", "white", "blue")
                         ,c("white", "black", "blue")

                         ,c("red", "yellow", "white")
                         ,c("yellow", "black", "blue")
                         ,c("green", "yellow", "black")

                         ,c("green", "black", "red")))
```

![](README-example-1.png)
