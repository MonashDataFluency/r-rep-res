
```r
library(tidyverse)
```

```
## ── Attaching packages ────────────────────────────────── tidyverse 1.2.1 ──
```

```
## ✔ ggplot2 3.1.1     ✔ purrr   0.3.2
## ✔ tibble  2.1.2     ✔ dplyr   0.8.1
## ✔ tidyr   0.8.2     ✔ stringr 1.4.0
## ✔ readr   1.3.1     ✔ forcats 0.3.0
```

```
## ── Conflicts ───────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
```

```r
library(knitr)
```

# Rmarkdown

The reason that we are learning [Rmarkdown](https://rmarkdown.rstudio.com/) is because it gives us very straight forward way of writing plain text documents with inline R code that will become a very sophisticated document types. The bonus points also come from the fact that Rmarkdown files are easy to version control (git) and see the difference between versions.
This approach of interleaving analysis code, commentary and description is very explicit, which has direct implication in reproducibility, shearability and collaboration.

In [Markdown section](#vanilla-markdown) I've showed you how to start new Rmarkdown document in RStudio, but lets briefly recap how we do that again.

```
File
 └── New File
        └── R Markdown

title = "Learning Rmarkdown"
author = "Me"
```

- select document type **HTML**
- to build (compile) the document press `knitr` button or `ctrl+alt+k`
- to save as `.Rmd` file


## Embedding R code

RStudio templates `.Rmd` file for us. However lets delete all the text after the yaml header.


````
---
title: 'Learning Rmarkdown'
author: 'Kirill'
date: '21/06/2019'
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
````

I'm going to explain `knitr::opts_chunk` in [later section](#more-rmarkdown). An R chunk is a "special" block with in the document that will be read and evaluated by `knitr`, ultimatelly converting everything into plain markdown. But for us it means that we can focus on our analysis and embed R code without having to worry about it. Additionally there are lage number of chunk options that helps with different aspects of the document including code decoration and evaluation, results and plots rendering and display.

This is an R code chunk.


````
```{r}

```
````

The little `r` there specifies the "engine", basically telling Rmarkdown how to evalute the code inside the chunk. Here we are saying use `R` engine (language) to evaluate the code. The [list of languages](https://bookdown.org/yihui/rmarkdown/language-engines.html) is rather long, hence why earlier comments about Rmarkdown spanning much greater area then one might think. In this workshop we are only going to focus on R language.

Let's write our first bit of R code inside the Rmarkdown document. First we need to start a new R chunk, which can be done in either of three ways:

- simply type it out
- press insert button at the top of the window
- `ctrl+alt+i`

Let's start with a simple `print()` statement and print `Hello world, I'm learning Rmarkdown !` string, except we are going to split it between two variable



````
```{r}
a <- 'Hello world, Im learning Rmarkdown !'
a
```
````

Note that each chunk can be run independently in the console by pressing `ctrl^enter` or little green arrow.

Each code chunk is highly customisable via [chunk options](https://bookdown.org/yihui/rmarkdown/r-code.html). We are going to learn a few today, but we won't be able to cover all of them. You probably never going to use some of them, but as long as you know what to look for you'll be able to search for then. Note that all chunk options have a default value. Not specifying an options means you are using the default value. These are chunk options that we are going to cover today.


name         value       type              description                                                                                                                                                                                                                                                                  
-----------  ----------  ----------------  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
child        NULL        code_evaluation   A character vector of filenames. Knitr will knit the files and place them into the main document.                                                                                                                                                                            
engine       'R'         code_evaluation   Knitr will evaluate the chunk in the named language, e.g. engine = 'python'. Run names(knitr::knit_engines$get()) to see supported languages.                                                                                                                                
eval         TRUE        code_evaluation   If FALSE, knitr will not run the code in the code chunk.                                                                                                                                                                                                                     
include      TRUE        code_evaluation   If FALSE, knitr will run the chunk but not include the chunk in the final document.                                                                                                                                                                                          
fig.align    'default'   plots             How to align graphics in the final document. One of 'left', 'right', or 'center'.                                                                                                                                                                                            
fig.cap      NULL        plots             A character string to be used as a figure caption in LaTex.                                                                                                                                                                                                                  
fig.height   7           plots             The height to use in R for plots created by the chunk (in inches).                                                                                                                                                                                                           
fig.width    7           plots             The width to use in R for plots created by the chunk (in inches).                                                                                                                                                                                                            
echo         TRUE        results           If FALSE, knitr will not display the code in the code chunk above it’s results in the final document.                                                                                                                                                                        
results      'markup'    results           If 'hide', knitr will not display the code’s results in the final document. If 'hold',knitr will delay displaying all output pieces until the end of the chunk. If 'asis',knitr will pass through results without reformatting them (useful if results return raw HTML,etc.) 
message      TRUE        results           If FALSE, knitr will not display any messages generated by the code.                                                                                                                                                                                                         
warning      TRUE        results           If FALSE, knitr will not display any warning messages generated by the code.                                                                                                                                                                                                 

General layout of any chunk is


````
```{r chunk_name, options}

```
````

Note a couple of things, there isn't a comma between `r` and `chunk_name`. Not sure why this is..
Also note that `chunk_name` is optional, you can skip it, as we have in earlier examples. Naming chunks is good idea to conceptually label the chunk as to what it does, but also we you are going to build more sophisticated documents you'll be able to selectively include chunks by refer to them by the chunk name.

Lets start off with these four chunk options:

- `echo` show what has been typed in i.e show the code
- `eval` evaluate or execute that code
- `include` include execute code into the document, relies on `eval = TRUE`
- `results` hide resulting output

These allow us fine level control over the final document. Think about who are generating the document for and what type of information you need to share. Sometimes we might want to show the code, but not execute it and other times we might just want to execute it and share the results, e.g plot, without actually showing the code.

### echo and eval

Let's start with `echo = TRUE` and `eval = TRUE`.


````
```{r echo = T, eval = T}
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```
````


```r
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```

```
## [1] "Hello world, Im learning Rmarkdown !"
```

Now let's turn `echo` off, `echo=FALSE`.


````
```{r echo = F}
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```
````


```
## [1] "Hello world, Im learning Rmarkdown !"
```

Okay, we don't see our original `print()` statement. And now let's pass `eval=FALSE` options instead


````
```{r eval = F}
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```
````


```r
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```

### include

This option also helps to manipulate your final document look. This option dictates whether the output of the executed code will be included into the final document. Sometimes you can simply trigger `eval` flag to achive similar result of code now being included, but other times you might way the code to actuall be executed but not included. For example when future R chunk relay on the output of this intermidiate chunk, but there is now need to include that into the document.



````
```{r echo = T, eval = T, include = F}
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```

```{r, echo = T, include = T}
ab
```
````


```r
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```


```r
ab
```

```
## [1] "Hello world, Im learning Rmarkdown !"
```

### results

Now we see the code, but not the output. The difference between `echo` and `results` is subtle, at least in my head. Let's consider the following example.



````
```{r echo = T, eval = F, results = 'asis'}
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```

```{r}
ab
```
````


```r
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```


```r
ab
```

```
## [1] "Hello world, Im learning Rmarkdown !"
```

Let's turn `results = 'hide'`


````
```{r echo = T, eval = F, results = 'hide'}
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```
```{r}
ab
```
````


```r
a <- 'Hello world,'
b <- 'Im learning Rmarkdown !'
ab <- paste(a, b)
print(ab)
```

[1] "Hello world, Im learning Rmarkdown !"


```r
ab
```

```
## [1] "Hello world, Im learning Rmarkdown !"
```

And now we only see `print()` statement and no output.


## Challenge: code chunks {.exercise}

> 3 minutes

<details>
  <summary>
    1. Go through all of your code so far and give each chunk a name
  </summary>

  
  ````
  ```
  {r chunk_name, options}
  ```
  ````
</details>
