# YAML header introduction

## YAML header

At the very top of your `.Rmd` file you can, optionaly, include YAML block. In this block you can fine turn your output document, add some metadata and change document's font and theme. You can also pass additional files such as stylesheet file `.css` and bibliography file `.bib` for text citation. I'm only going to show you a few possible options and will let you explore the rest on your own.

Navigate to the top of your `.Rmd` document and find YAML section there. Just like with the options we passed in to manipulate R code block, YAML block also has **key = value** pairs, but instead they are separated by colon ( `:` ). Now let's add table of content to our document, this will make it easier to navigate your page as well as give nice over view of the content our **key** is `toc` with value `true` or `yes` which one you prefer better.

```r
 ---
 title: "Hello world"
 author: "Kirill"
 date: "13 July 2016"
 output:
   html_document:
     toc: true
 ---
```

**Note** that you need to bring `html_document` onto new line and indent it with two spaces. `html_document` is a value of `output` key. `output` can have other values e.g `pdf_document`, `word_document`. However `html_document` also becomes a key for `toc` value and `toc` becames a key for its own value.

Now that we have sort it initial YAML layout we can continue adding more options to style our HTML document. The other two useful options that I like to pass in are `toc_depth` and `number_sections`

```r
 ---
 title: "Hello world"
 author: "Kirill"
 date: "13 July 2016"
 output:
   html_document:
     toc: true
     toc_depth: 4
     number_sections: yes
 ---
```

Most of those options are self explanatory. They best way to learn what each does, is to pass them in. Note that you can comment lines out inside YAML section with `#` symbol.

The last two options that can change your document apperance are `theme` and `highlight`. There are nubmer of different themes and highlight options. I suggest you find the one you like in your own time.

## R slides - ioslides

As I mentioned in previous section, `output` has many options, one of which is `ioslides_presentation`. You can simple add

```r
 ---
 output: ioslides_presentation
 ---
```

at the top of your document and your `.Rmd` files will be complied to slide presentation instead.

Another options is select **presentation** options when you were opening R markdown file. Either way you'll notice YAML header reflects your selected output type.
Let's open new R markdown document and let's select presentation instead and let's select HTML (ioslides) option there. You can still save your files as `.Rmd`, and then press the\ the `Knit HTML` button.

The syntax for the document is more or less the same, expcept `##` is now used to mark new slide.

## Extras

This is mainly to talk about [Rnotebook](https://rmarkdown.rstudio.com/r_notebooks.html) and give you some extra tips about it. Hopefully this will grow into section of it own in the near future.

- to turn inline output (defualt behaviour) on R markdown documents on/off through settings, _Chunk output inline_ / _Chunk output in console_
- Output doesn't go to Viewer/Plots pane, it stays inside the notebook
- Working directory is the location of Rmd file. (I think changing directory with in the chunk isn't good idea)
- In general [Rnotebook](https://rmarkdown.rstudio.com/r_notebooks.html) meant to have better error handling, sends one line at a time for execution, compare to all lines for Rmarkdown document
