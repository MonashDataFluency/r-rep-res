# Rmarkdown ecosystem

Rmarkdown ecosystem is relatively complicated and includes several different R packages. Most of those packages wrap other existing tools, written by different people, thereby providing an "easy" way to interface with the tools via R language. By and large the whole ecosystem rotates around [pandoc](https://pandoc.org/) tool.

## Pandoc

Pandoc is a stand alone tool (command line tool) that one can run in the terminal to convert markdown documents to other documents types including html, pdf and MS docs. Since vanilla markdown is pretty simple in what it can produce, pandoc added whole lot of "features", additional marking tags, that one can use to build more elaborate documents from plain text.

## YAML

This is stand along language that is used in variety of places, with main advantage to it is that it can be easily ready by humans as well easily parsed by computer. A lot of the time YAML can be used ad a configuration file. This is example how it is used with Rmarkdown. We will talk about [YAML in more depth in a different section](#yaml-header-introduction). In brief we will use YAML to set documents appearance and link additional files with the documents, such as bibliographies.

## Knitr

As was mentioned before we are using [pandoc](https://pandoc.org/) to convert markdown to other document types. [knitr](https://yihui.name/knitr/) provides function to convert Rmarkdown files into vanialla markdown, which then in turn can be converted by pandoc into html document for example. Some of the things that [knitr](https://yihui.name/knitr/) does includes R code execution and assembling the results into markdown.

## Rmarkdown

An [rmarkdown R package](https://github.com/rstudio/rmarkdown) will convert `.Rmd` files into other format types. Under the hood it will use [pandoc](https://pandoc.org/) to do so. The main function that we are concerned with is `rmarkdown::render()` which will call `knitr::knit()` when required.

## Bookdown

A [bookdown R package](https://github.com/rstudio/bookdown) enhances [rmarkdown](https://github.com/rstudio/rmarkdown) by enabling multi-page documents e.g books and easy cross-referencing.

## Others

These are more R packages that enable more things via Rmarkdown.

- [xaringan](https://github.com/yihui/xaringan)
- [blogdown](https://github.com/rstudio/blogdown)
- [thesisdown](https://github.com/ismayc/thesisdown)

## References

- [related stackoverflow question](https://stackoverflow.com/questions/40563479/relationship-between-r-markdown-knitr-pandoc-and-bookdown)
a- [Presentation slides on Rmarkdown ecosystem](https://slides.yihui.name/2017-DSM-rmarkdown-Yihui-Xie.html)
