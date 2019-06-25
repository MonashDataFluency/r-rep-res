---
author: serine
timestamp: 2019.05.13_23:20:48_AEST
---

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
