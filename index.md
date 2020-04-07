---
layout: default
---

# R Exposure Workshop
## Spring 2020
### University of Washington Tacoma

## Installation

   * [R and RStudio Installation Instructions](https://clanfear.github.io/CSSS508/docs/installation.html)
   * [Enabling compilation of packages](https://clanfear.github.io/CSSS508/docs/compiling.html)
   * [R Exposure Setup](lectures/setup/r_exposure_setup.html)

## [Pre-Workshop Assignments](assignments/preassignment.html)

# R1

* [Unit 1: RStudio and R Markdown](lectures/R1/Week1/CSSS508_Week1_RStudio_and_RMarkdown.html)
   + [R Script for Unit 1](lectures/R1/Week1/CSSS508_Week1_RStudio_and_RMarkdown.R)
* [Unit 2: Visualization with `ggplot2`](lectures/R1/Week2/CSSS508_Week2_ggplot2.html)
   + [R Script for Unit 2](lectures/R1/Week2/CSSS508_Week2_ggplot2.R)

# R2

* [Unit 3: RStudio and R Markdown](lectures/R2/Week3/CSSS508_Week3_dplyr.html)
   + [R Script for Unit 3](lectures/R2/Week3/CSSS508_Week3_dplyr.R)
* [Unit 4: RStudio and R Markdown](lectures/R2/Week4/CSSS508_Week4_data_structures.html)
   + [R Script for Unit 4](lectures/R2/Week4/CSSS508_Week4_data_structures.R)
   
# R3

* [Unit 5: RStudio and R Markdown](lectures/R3/Week5/CSSS508_Week5_data_import_export_cleaning.html)
   + [R Script for Unit 5](lectures/R3/Week5/CSSS508_Week5_data_import_export_cleaning.R)
* [Unit 6: RStudio and R Markdown](lectures/R3/Week6/CSSS508_Week6_loops.html)
   + [R Script for Unit 6](lectures/R3/Week6/CSSS508_Week6_loops.R)

# R4

* [Unit 7: RStudio and R Markdown](lectures/R4/Week7/CSSS508_Week7_vectorization.html)
   + [R Script for Unit 7](lectures/R4/Week7/CSSS508_Week7_vectorization.R)
* [Unit 8: RStudio and R Markdown](lectures/R4/Week8/CSSS508_Week8_strings.html)
   + [R Script for Unit 8](lectures/R4/Week8/CSSS508_Week8_strings.R)
   
## [Post-Workshop Assignments](assignments/postassignment.html)

## General R Resources:

   * [UW CSSS508](https://clanfear.github.io/CSSS508/): My University of Washington Introduction to R course which forms the basis for this workshop. All content including lecture videos are freely available.
   * [R for Data Science](http://r4ds.had.co.nz/) online textbook by Garrett Grolemund and Hadley Wickham. One of many good R texts available, but importantly it is free and focuses on the [`tidyverse`](http://tidyverse.org/) collection of R packages which are the modern standard for data manipulation and visualization in R.
   * [Advanced R](http://adv-r.had.co.nz/) online textbook by Hadley Wickham. A great source for more in-depth and advanced R programming.
   * [R Studio Primers](https://rstudio.cloud/learn/primers): Interative online tutorials in R.
   * [`swirl`](http://swirlstats.com/students.html): Interactive tutorials inside R.
   * [Useful RStudio cheatsheets](https://www.rstudio.com/resources/cheatsheets/) on R Markdown, RStudio shortcuts, etc.
   * [Code style guide](http://adv-r.had.co.nz/Style.html) for writing functions, etc.
   * [Good Enough Practices in Scientific Computing](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510): From abstract, "This paper presents a set of good computing practices that every researcher can adopt, regardless of their current level of computational skill."  

## Plotting

   * Base R graphics
      + [Shapes and line types](http://www.cookbook-r.com/Graphs/Shapes_and_line_types/) in base R
      + [Color names (PDF)](http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf) in base R
   * `ggplot2`
      + [`ggplot2` documentation](http://docs.ggplot2.org/current/)
      + [`ggplot2` Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf)
   * [Visualization chapter in R for Data Science](http://r4ds.had.co.nz/data-visualisation.html)
   * [Cookbook for R graph reference](http://www.cookbook-r.com/Graphs/)
   * [R graph catalog at UBC](http://shiny.stat.ubc.ca/r-graph-catalog/)

## Data Manipulation

   * [Data Transformation chapter in R for Data Science](http://r4ds.had.co.nz/transform.html)
   * `dplyr`:
       + [`dplyr` cheatsheets](http://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf) with diagrams to help you remember functions
       + [Introduction to `dplyr`](https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html)
       + [Window functions in `dplyr`](https://cran.r-project.org/web/packages/dplyr/vignettes/window-functions.html)
       + [Joining data in `dplyr`](https://cran.rstudio.com/web/packages/dplyr/vignettes/two-table.html)
       + More advanced joins: [`sqldf` for easy SQL in R](https://cran.r-project.org/web/packages/sqldf/index.html)
   * [Data Structures chapter in Advanced R](http://adv-r.had.co.nz/Data-structures.html)
   * Tidying:
       + [`tidyr` vignette](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html)
       + [Tidy genomics](http://varianceexplained.org/r/tidy-genomics/) (a walkthough of tidy data preparation and analysis)
   * Dates and times:
       + [`lubridate` vignette](https://cran.r-project.org/web/packages/lubridate/vignettes/lubridate.html)
   * Factors:
       + [Lots on factors from Jenny Bryan](http://stat545-ubc.github.io/block014_factors.html)
   * Strings
       + [`stringr` vignette](https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html)
       + [Blog post explaining `paste()`](https://trinkerrstuff.wordpress.com/2013/09/15/paste-paste0-and-sprintf-2) for combining strings
       + [Site for regular expression testing](http://regexr.com/)  with a good cheatsheet and hover explanations
       
## Importing and Exporting Data
   * Data import and export:
       + [`readr` documentation](https://cran.r-project.org/web/packages/readr/readr.pdf)
       + [Column types in readr](https://cran.r-project.org/web/packages/readr/vignettes/column-types.html)
       + [Using `dput()` when asking for help](http://stackoverflow.com/questions/5963269/how-to-make-a-great-r-reproducible-example)
       + [`readxl`](https://github.com/hadley/readxl) and [`openxlsx`](https://cran.r-project.org/web/packages/openxlsx/vignettes/Introduction.pdf) packages for Excel
 