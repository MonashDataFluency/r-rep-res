# Work in progress

Remeber to say that each option will have some default value, sometime default can be None/NULL/NA, but it is still a default.

- `collapsed` (defaults to TRUE) controls whether the TOC appears with only the top-level (e.g., H2) headers. If collapsed initially, the TOC is automatically expanded inline when necessary.

- `smooth_scroll` (defaults to TRUE) controls whether page scrolls are animated when TOC items are navigated to via mouse clicks.

```
---
title: "Habits"
output:
  html_document:
    toc: true
    toc_float:
      collapsed: false
      smooth_scroll: false
---
```


## Tabbed sections

```
## Quarterly Results {.tabset}

### By Product

(tab content)

### By Region

(tab content)
```

```
## Quarterly Results {.tabset .tabset-fade .tabset-pills}
```

## How documents looks

- theme

- highlight

    - default
    - tango
    - pygments
    - kate
    - monochrome
    - espresso
    - zenburn
    - haddock
    - textmate
    - null

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
