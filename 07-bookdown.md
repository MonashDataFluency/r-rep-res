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
