# Reproducible research in R

[![Build Status](https://travis-ci.org/MonashDataFluency/r-rep-res.svg?branch=master)](https://travis-ci.org/MonashDataFluency/r-rep-res)

> RRR

More to come soon, watch this space !

:)

## Contributors guidelines

Thanks for considering making a contribution to this project. Every contribution matter and will be highly appreciated.

Any contribution need to come via [PR (pull request)](https://help.github.com/en/articles/about-pull-requests). Depending on the structure and settings of the GitHub organisation [MonashDataFluency](https://github.com/MonashDataFluency) multiple members can have direct "push" ability to the main repo. This is discouraged since it could results in difficult content conflicts that are time consuming to resolve. As just mentioned, to avoid those conflicts "PR" is the best option. An alternative approach could be creating a new branch for your particular edits e.g `git checkout -b johns_edits` and pushing that branch to the main repo. This once again will avoid many issues. Last but not least when you have multiple people contributing to the main repo always check for the latest changes before pushing your owns. Here is a series of steps you typically perform, some steps might be skipped.

- `git checkout master`
- `git pull origin master`
- `git checkout johns_edits`
- `git merge master`
- `git checkout master`
- `git merge johns_edits`
- `git push origin master`

### Typical workflow

An outline of a typical workflow for contribution:

- `fork` take a copy of the repository by "forking" it
- make changes to changes you think are appropriate on your copy of the repository
- `PR` create a pull request to this original repo
- `PR` will be considered and merged into main repo if appropriate.

### Bookdown workflow

bookdown provides an alternative, slightly simplified way to edit documents and create PR, many of the git steps mentioned above don't apply to this workflow.

- when reading [the book](https://monashdatafluency.github.io/r-rep-res/) at the top of every page there is an "edit" button, typically on the toolbar, top left hand side.
- by clicking this button you will get a redirect to GitHub edit page, this automatically forks the repository and creates an edit branch, typically branch name looks like this "patch-01". However you don't need to worry about this, simply make your edits and save
- you will have a new "patch" branch for every new page that you edited (this is a good thing)
- you'll need to go to each "patch" branch and create pull request for that branch/path by pressing "pull request" button
- adding a message is always a good idea, even if it is short message.

## Data set

We are going to use [domestic airline on time performance data set, from data.gov.au](https://data.gov.au/data/dataset/domestic-airline-on-time-performance/resource/cf663ed1-0c5e-497f-aea9-e74bfda9cf44) in this workshop

## Note

bookdown and/or pandoc appears to be buggy or I don't understand something..[raised a question on Rstudio comm](https://community.rstudio.com/t/feels-like-a-bug-in-rendering-gitbook-can-somebody-chec-help/33762/2)
