# (PART) Part {-}

In this part of the book we will beging by talking about Rmarkdown language, where it has originated and the ecosystem that surrounds it. We are then going to look closerly at the core parts of the Rmarkdown document. After that we will start with understanding basics of vanilla markdown as a building block of Rmarkdown. We will finish off this section of the book with hands on experience writting Rmarkdown documents with embeded R code chunks.

# Introduction to Rmarkdown

Rmarkdown has become much more then just embedding R code into a document. It enables construction of very sophisticated document types from plain text files. Rmarkdown file can become pdf documents and a static website at the same time. It can turn your analysis scattered across several different Rmarkdown documents into a single multi-paged books with cross-referencing and citations, let's call it a thesis or a paper or a course book. And with essentially no effort you can change from "rendering" your Rmarkdown into presentation slides instead of web-page, ready for a conference in little time.
Rmarkdown is a natural evolution of vanilla markdown, backed and extended by the Rmrkdown ecosystem discussed [shortly](#rmarkdown-ecosystem). [Rmarkdown](https://rmarkdown.rstudio.com/) isn't the only other flavour of markdown. There are other initiatives such as [GitHub Flavored Markdown (GFM)](https://guides.github.com/features/mastering-markdown/) which mainly enhances content appears on github site and [CommonMark](http://commonmark.org/) that tries to unify all the different flavours of markdown syntax, but all will converge to pandoc tool.

## Rmarkdown core parts

Any Rmarkdown documents is broken into three main parts:

- [YAML header](#yaml-header)
- [The R chunks](#the-r-chunks)
- [markdown - plain text](#vanilla-markdown)

Those are different parts of the document that all work together to form - render a final document. Each one of those parts can be customised with further options, which will cover later in the book.

### [YAML header](#yaml-header)

YAML header will always seat at the very top of your Rmarkdown document and it starts and ends with triple dash symbols, `---`. Note that YAML is indentation and space sensitive, meaning you need to be rather strict about amount of indentation you use and text strings will need to be quoted.

```
---
title: "Hello world"
author: "Kirill"
date: "17 June 2019"
output: html_document
---
```

### [The R chunks](#the-r-chunks)

These are special parts of the document that hold code that can be executed inline of the Rmarkdown document. R chunks are highly customisable via chunk options. We will spending a lot of time in the course working with code chunks and different options types.


````
```{r}
plot(mtcars)
```
````

### [Everything else is plain old markdown](#vanilla-markdown)

```
 # Have I been Marked Down?
```

## Challenge: Introduction 1 {.exercise}

> 5 minutes

<details>

  <summary>
    1. What file extention should we typically use for saving our <u>**Rm**</u>ark<u>**d**</u>own files?
  </summary>
  [answer link](https://superuser.com/questions/249436/file-extension-for-markdown-files)

</details>


<details>

  <summary>
    2. What document types can be produced (compiled) from Rmarkdown?
  </summary>

  <a href="https://r4ds.had.co.nz/r-markdown-formats.html">
    <img src="figures/document_types2.png" title="Rmarkdown document types" alt="doc_types">
  </a>

</details>

<details>
  <summary>
    3. Will I have to learn more "languges" to use Rmarkdown (discussion question)?
  </summary>

  The short answer is no. Learning and writing Rmarkdown will take you a very long way.

  The longer answer is yes. At some point in the future you might want to very sophisticated documents and for that you'll most certainly will need at least tiny amount of html + css knowledge and maybe some knowledge about LaTeX (I've yet to learn a single thing about LaTeX - so far so good :D )

  [check out this bit of Rmarkdown](link to github that the line of code above)

</details>

## Rmarkdown ecosystem

Rmarkdown has relativelly complicated ecosystem. It includes several different R packages. Most of those packages wrap other existing tools, written by different people, thereby providing an "easy" way to interface with the tools via R language. A large part of the ecosystem exists thanks to [pandoc](https://pandoc.org/) tool.

### Pandoc

Pandoc is a stand alone tool (command line tool) that one can run in the terminal to convert markdown documents to other documents types including html, pdf and MS docs. Since vanilla markdown is pretty simple in what it can produce, pandoc added whole lot of "features", additional marking tags, that one can use to build more elaborate documents from plain text.

### YAML

This is stand along language that is used in variety of places, with main advantage to it is that it can be easily ready by humans as well easily parsed by computer. A lot of the time YAML can be used ad a configuration file. This is example how it is used with Rmarkdown. We will talk about [YAML in more depth in a different section](#yaml-header-introduction). In brief we will use YAML to set documents appearance and link additional files with the documents, such as bibliographies.

### LaTeX

```
¯\_(ツ)_/¯

```

### Knitr

As was mentioned before we are using [pandoc](https://pandoc.org/) to convert markdown to other document types. [knitr](https://yihui.name/knitr/) provides function to convert Rmarkdown files into vanialla markdown, which then in turn can be converted by pandoc into html document for example. Some of the things that [knitr](https://yihui.name/knitr/) does includes R code execution and assembling the results into markdown.

### Rmarkdown

An [rmarkdown R package](https://github.com/rstudio/rmarkdown) will convert `.Rmd` files into other format types. Under the hood it will use [pandoc](https://pandoc.org/) to do so. The main function that we are concerned with is `rmarkdown::render()` which will call `knitr::knit()` when required.

### Bookdown

A [bookdown R package](https://github.com/rstudio/bookdown) enhances [rmarkdown](https://github.com/rstudio/rmarkdown) by enabling multi-page documents e.g books and easy cross-referencing.

### Others

These are more R packages that enable more things via Rmarkdown.

- [xaringan](https://github.com/yihui/xaringan)
- [blogdown](https://github.com/rstudio/blogdown)
- [thesisdown](https://github.com/ismayc/thesisdown)

## Setup

We will need to install these packages. Let's install these packages



```r
packages <- c("tidyverse",
              "rmarkdown",
              "knitr",
              "bookdown",
              "tinytex",
	      "citr")

keep <- packages[!(packages %in% installed.packages()[,"Package"])]

if(length(keep)) {
  install.packages(keep)
}
```

## Challenge: Introduction 2 {.exercise}

> 2 minutes

<details>

  <summary>
    1. Now is a good time to tweak your RStudio to your needs.
  </summary>

  - change font size
  - change themes and backgroung color
  - rearrange panels

</details>

<details>

  <summary>
    2. Please turn off "Restore .RData into workspace at startup" in "Tools -> Global Options".
  </summary>

</details>


## Useful tips

<!--
#NOTE you found gold !
> One cannot know all of Rmarkdown wisdom. One would continuesly learn to make oneself more Rsome.
-->

- don't attempt to compile to `pdf_document` until absolutelly necesserary. `LaTeX` engine that is used by Rmarkdown to pdf conversion known to have issues with aligning figures and tables. This typically causes figures and tables overflow to next pages and general text misalignment. Get your content written first, intermidiate compilation to `html_documents` are totaly fine, before worrying about technical issues
- don't save data into `.RData`, this will make your work less reproducible
