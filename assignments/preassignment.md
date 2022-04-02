---
layout: default
---

# Exposure to R
## Pre-Assignment

This page describes both components of the R Exposure course you are expected to complete *prior to the first lecture* (or as soon as possible). You have two tasks: 

1. Install R and RStudio
2. Complete two interactive R tutorials

### Installing R and RStudio

To install R and RStudio, [follow the instructions found here](https://clanfear.github.io/CSSS508/docs/installation.html). If you have any difficulty, do not hesitate to [email me](mailto:clanfear@uw.edu). If you wish to compile R packages (it is fine to have no idea what that means!) you can [follow these steps as well](https://clanfear.github.io/CSSS508/docs/compiling.html).

### `swirl`

`swirl` is an R package for running interactive tutorials in R itself. These tutorials will give you a guided introduction to R while familiarizing you with your own installation of R. There are many lessons available in `swirl`, but I just ask that you complete the first two units of `swirl`'s R Programming introduction. [You can see instructions to do this here](https://github.com/swirldev/swirl_courses), which I've replicated below. In your RStudio console (the bottom panel), enter the following commands--enter the entire line of code, then press enter:

```
install.packages("swirl")
library(swirl)
install_course("R Programming")
swirl()
```

From there, follow the instructions in the console and complete `1: Basic Building Blocks` and `2: Workspace and Files`. Do more if you'd like--it will give you a jump at some of our lecture material. Again, [email me](mailto:clanfear@uw.edu) if you have any difficulty. Note that while you are using `swirl` it will "take over" your R console. If you need to close `swirl`, type `bye()` into the console and hit `Enter`.