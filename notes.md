---
author: serine
timestamp: 2019.05.13_23:20:48_AEST
---

## 20.04.2020

- start with Git presentation
- do the first challenge - 5 minutes, how do people organise they directory / projects structure? Best way is to keep everything under a set directory, maybe use google drive to illustrate the point?
I should give people some example of the "stuff" that we will be putting into those directories e.g raw-data/fastq_files, references/reference_files, scripts/some_R_scrripts.R supplementary, notes.. most important file of all - which is it? ->> README.md !! name says it all. Other typical files that you could have, perhaps briefly mention https://github.com/bionitio-team/bionitio? , probably not actually, this is for R packages more so.. make my own?

## What is Rproj?

What is R project?

> RStudio projects make it straightforward to divide your work into multiple contexts, each with their own working directory, workspace, history, and source documents.


# Reproducible research in R

> RRR

## Up front

- we are going to use [rstudio.cloud](https://rstudio.cloud), everybody with monash google account should be able to sign in. Note that currently this resource is free to use but could become a paid for in the future, but rstudio desktop app will always be free
- we are not going to learn any of the LaTex thing, but it does exist and you might have use it

## Include into RRR course

- what is R project, `.Rproj` file and why use it
    - when you open a project it set the working directory
    - if you ever have to run `setwd()` then this is a perfect case for .Rproj, says Paul, [ref](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)
    - `.RData` is saved inside `.Rproj`, but you shouldn't use that

- include git, reproducible
    - git mainly through RStudio. Rstudio has a dialog box that shows nice staging and good diff ing of the commits

- work towards remote repository becoming your "canonical" location for the project and gives you nice workflow with your supervisor
- require vs library, Hadley doesn't use `require` therefore don't
    - when you type a function name without brackets it has at the bottom, `<environment: namespace:stats>` which is enough to know where that function from. In general good to use :: syntax, but bioconductor doesn't seem to like it.

## Looking for a dataset

- [School locations time series](https://discover.data.vic.gov.au/dataset/school-locations-time-series/historical)
- [Post shcool destinations of year 12](https://discover.data.vic.gov.au/dataset/post-school-destinations-of-year-12-or-equivalent-completers-victorian-schools-2014/resource/114d958a-b040-46f3-be22-244c9dba4293)
- [Insect Records in the City of Melbourne](https://data.gov.au/dataset/ds-melbourne-https%3A%2F%2Fdata.melbourne.vic.gov.au%2Fapi%2Fviews%2F47ai-9yup/details?q=insect%20decline)
- [Survey of faecal indicators and opportunistic pathogens in rainwater tank samples](https://data.csiro.au/collections/#collection/CIcsiro:20954/SQpublic%20health/RP1/RS25/RORELEVANCE/STsearch-by-keyword/RI13/RT15/)
- [Time-series for plankton and physio-chemistry of Logan's Dam](https://data.csiro.au/collections/#collection/CIcsiro:5945/BTtn/BVFreshwater%20Ecology/RP1/RS25/RORELEVANCE/STnull/RI1/RT2/)
- [Pedal bike accidents data](https://www.aihw.gov.au/reports/injury/pedal-cyclist-injury-deaths-hospitalisations/data)
- [Traffic count locations](https://discover.data.vic.gov.au/dataset/traffic_count_locations)

### These are places to look for data sets

- https://www.aihw.gov.au/about-our-data/accessing-australian-government-data
- https://data.csiro.au/collections/#browse/
- https://data.vic.gov.au/
- https://data.gov.au/
- https://toolbox.google.com/

### keyword that might be useful to start with

- pathogens
- microbiology
- public health
- epidemiology

## resources

- https://happygitwithr.com/
- https://community.rstudio.com/t/r4ds-in-rsuite-format/32613
- https://rmd4sci.njtierney.com/
- https://bookdown.org/yihui/rmarkdown/

## todo

- learning outcome
- course description

## todo

- explain sections linking via [this is todo](#todo) and all spaces replaced with hiphen (`-`). this way I can use that in github section (04)
- In the github intro section don't forget to include "gh-page" enabling. That it is out of the way

## Things covered

- working with images, `knitr::include_graphics()`
- code externalization, `read_chunk()`

## Mention

- [thesisdown](https://github.com/ismayc/thesisdown)
- blogdown (on the back of hugo)

This message came up when I was using R from the terminal

```
Warning message:
Auto-saved workspace file '.RData' detected. This is bad for reproducible code. You can remove it with unlink(".RData"). To avoid generating '.RData' files, start your session with 'R --no-save'or disable the saving of workspace images in the RStudio IDE settings.
```

## rant

when you are opening rstudio and Rmarkdown file for the first time you'll need to install some packages, that step should be done at the introduction stage

Here I want to rank about Rstudio being shit for git+github workflow, could/should turn this into a blogpost mainly so that other don't spend so much time figuring this out

https://happygitwithr.com/ssh-keys.html

https://github.com/rstudio/rstudio/issues/3805

https://github.com/search?q=org%3Arstudio+rpostback-askpass&type=Code

https://github.com/ropensci/git2r/issues/284
https://github.com/OHI-Science/ohicore/issues/104

https://stackoverflow.com/questions/32699891/rstudio-push-rpostback-askpass-error

## Figure options via yaml

> This sounds interesting

ok, I've tested out and fig_height and width via yaml do the same thing as when passed through chunk options. I guess yaml allows global defition, although one can set chunk options globally too..

also need to cover `out.width = "70%"`

pretty good resource about image resizing https://sebastiansauer.github.io/figure_sizing_knitr/

## tables Rmarkdown

can't really describe at this stage where this is come from. it appears that it has links with pagedown and paged.js library

- `paged`

max.print	The number of rows to print.
rows.print	The number of rows to display.
cols.print	The number of columns to display.
cols.min.print	The minimum number of columns to display.
pages.print	The number of pages to display under page navigation.
paged.print	When set to FALSE turns off paged tables.
rownames.print	When set to FALSE turns off row names.

##

Read this https://harzing.com/blog/2019/05/two-new-kids-on-the-block-crossref-and-dimensions

https://github.com/ropensci/bibtex

https://ropensci.org/technotes/2020/05/07/rmd-citations/#fnref:1

https://zbib.org/