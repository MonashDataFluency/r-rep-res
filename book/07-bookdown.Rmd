# (PART) Part III {-}

# Bookdown

```
¯\_(ツ)_/¯
```

All `.Rmd` files located in the same directory will be compiled into the book in the (alphabetical?) order.

- files that start with an underscore are skipped
- if there is an `index.Rmd` it will always be treated as a first file
- those settings can be overwritten via `_bookdown.yml`
- `_bookdown.yml` must co-exist with `.Rmd` files in the "book" directory

Bookdown has extended markdown even further for math https://bookdown.org/yihui/bookdown/markdown-extensions-by-bookdown.html#tab:theorem-envs

## work in progress

Besides these html_document() options,

gitbook() has three other arguments:

- `split_by` argument specifies how you want to split the HTML output into multiple pages

    - `rmd`: use the base filenames of the input Rmd files to create the HTML filenames, e.g., generate chapter3.html for chapter3.Rmd.
    - `none`: do not split the HTML file (the book will be a single HTML file).
    - `chapter`: split the file by the first-level headers.
    - `section`: split the file by the second-level headers.
    - `chapter+number` and `section+number`: similar to chapter and section, but the files will be numbered.

- `split_bib`
- `config`

- `collapse`
    - `section`
    - `subsection`

      scroll_highlight: yes
      before: null

