<!--
https://stackoverflow.com/questions/35459166/embed-rmarkdown-with-rmarkdown-without-knitr-evaluation
-->

# Vanilla Markdown

The original (vanilla) version of Markdown invented by [John Gruber](https://en.wikipedia.org/wiki/Markdown) defines a handful tags, discussed shortly. [Rmarkdown](https://rmarkdown.rstudio.com/) isn't the only flavour, [CommonMark](http://commonmark.org/) that tries to unify all the different flavours and [GitHub Flavored Markdown (GFM)](https://guides.github.com/features/mastering-markdown/) which mainly enhances content appears on github site.

## Vanilla tags

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

I know I said vanilla, but we are launching an Rmarkdown file. It doesn't matter for two reasons, under the hood Rmarkdown will always be converted to vanilla markdown and we are simply using RStudio to write text, can be anything.

From now onward we are going to start using `knitr` is an R package that does all the magic of converting and running your R markdown and R code respectively.

There actually not that much to core (vanila) of markdown essentially all of it can be summarised below

```r
 # Header1
 ## Header2
 ### Header3

 Paragraphs are separated
 by a blank line.

 Two spaces at the end of a line
 produces a line break.

 Text attributes _italic_,
 **bold**, `monospace`.

 Horizontal rule:

 ---

 Bullet list:

   * apples
   * oranges
   * pears

 Numbered list:

   1. wash
   2. rinse
   3. repeat

 A [link](http://example.com).

 ![Image](Image_icon.png)

 > Markdown uses email-style > characters for blockquoting.
```

## Practice vanilla markdown

Now it's just a matter of learning some of the markdown syntax. Let's delete all current text from the opened document except the YAML header and type this new text in `Hello world, I'm learning R markdown !` and pressing the `knit HTML` button.

```
 Hello world, I'm learning R markdown !
```

Not much happened. This is because we didn't mark our text in any way. You can put as much text as you want and it will appear as is, unless "specially" marked to look differently.

Now add the `#` symbol at the start of the line and press the `knit HTML` button again. We'll be pressing this button a lot! For those who like keyboard short cuts use `ctrl+shift+k` instead.

```
 # Hello world, I'm learning R markdown !
```

How about now? A single hash symbol made it whole lot bigger didn't it? We've marked this whole line to be the header line.

Now make three new lines with the same text, but different numbers of `#` symbols, one, two and three respectively and keep pressing the `Knit HTML` button

```
 # Hello world, I'm learning R markdown !
 ## Hello world, I'm learning R markdown !
 ### Hello world, I'm learning R markdown !
```

This is how you can specify different headers type using markdown.

**Remember** that [vanilla markdown](https://daringfireball.net/projects/markdown/syntax) is comprised entirely of punctuation characters.

## Challenge: Markdown 101 {.exercise}

> 5 minutes

<details>
  <summary>
    1. How to mark text so that it appears <u>underlined</u>?
  </summary>
  [answer link](https://softwareengineering.stackexchange.com/questions/207727/why-there-is-no-markdown-for-underline)
</details>

<details>
  <summary>
    2. Can markdown replace [html](https://en.wikipedia.org/wiki/HTML) (discussion question)?
  </summary>
  It has replaced html and latex in documention and communication of results. My feeling is that data science ecosystem heavily rotates around markdown. But html, pdf and latex in this context are simply communication and sharing medium.
  On would not want to replace html + css for large website project
</details>

