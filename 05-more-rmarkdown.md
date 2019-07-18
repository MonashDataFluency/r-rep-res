# More Rmarkdown

We are going to inrease the difficulty a little now. We are going to start working towards our [final documnet](example.html).

Typically you will have some data set that you are trying to analyse. There are likely to be some other prior steps before you get your tabular data. Those prior steps should also be documented. In this workshop we are going to start with a tabular data set. I found this rather interesting data set at [data.gov.au](https://data.gov.au), [Domestic Airlines - On Time Performance](https://data.gov.au/data/dataset/domestic-airline-on-time-performance) and I decided to investigate it a bit closer.

## Setup

First thing first is we need to download it. Note that `read_csv` from [`readr`](https://readr.tidyverse.org/) package can "read" directly from url, but I wasn't sure if everytime I compile Rmarkdown to html it would re-download the file or use chached version. I decide to store a local copy on my computer for speed and simplisity. You should always check a licence on the data set, especially if you are going to publish some of your analysis. This data is _Creative Commons Attribution 3.0 Australia_  licence, there is no problem in downloading and using the data.


Let's open new Rmarkdown file and delete everything from it except the yaml header.

### Setting global chunk options

As you have learned already you can manipulate each R chunk with options, but you can also set global settings for each chunk. Let's set `echo = TRUE` and `message = FALSE` globally. This means every R chunk will be echoed i.e shown in the finale document and no messages will appear anywhere in the document.


```r
options(encoding="utf-8")

knitr::opts_chunk$set(echo = TRUE,
                      message = FALSE)
```

### Loading libraries

We are going to do our analysis with the help of [`tidyverse`](https://www.tidyverse.org/) library, that in itself includes many other libraries.



```r
library(tidyverse)
```

### Downloading the data

We are doing conditional download here, don't re-download if we already have the file.


```r
fn_data <- "domestic_airline_performance.csv"
fn_notes <- "domestic_airline_performance_notes.txt"

if(!file.exists(fn_data)) {
  url_data <- "https://data.gov.au/data/dataset/29128ebd-dbaa-4ff5-8b86-d9f30de56452/resource/cf663ed1-0c5e-497f-aea9-e74bfda9cf44/download/otp_time_series_web.csv"
  url_notes <- "https://data.gov.au/data/dataset/29128ebd-dbaa-4ff5-8b86-d9f30de56452/resource/69e214b9-b66f-4636-9c84-3efda2d0d8ae/download/otptimeserieswebnotes.txt"

  download.file(url_data, fn_data)
  download.file(url_notes, fn_notes)
}

df <- read_csv(fn_data, quote = "")
df
```

```
## # A tibble: 79,537 x 14
##    Route Departing_Port Arriving_Port Airline Month Sectors_Schedul…
##    <chr> <chr>          <chr>         <chr>   <dbl>            <dbl>
##  1 Adel… Adelaide       Brisbane      All Ai… 37987              155
##  2 Adel… Adelaide       Canberra      All Ai… 37987               75
##  3 Adel… Adelaide       Gold Coast    All Ai… 37987               40
##  4 Adel… Adelaide       Melbourne     All Ai… 37987              550
##  5 Adel… Adelaide       Perth         All Ai… 37987              191
##  6 Adel… Adelaide       Sydney        All Ai… 37987              486
##  7 Albu… Albury         Sydney        All Ai… 37987              168
##  8 Alic… Alice Springs  Sydney        All Ai… 37987               63
##  9 All … All Ports      All Ports     All Ai… 37987            31913
## 10 Bris… Brisbane       Adelaide      All Ai… 37987              155
## # … with 79,527 more rows, and 8 more variables: Sectors_Flown <dbl>,
## #   Cancellations <dbl>, Departures_On_Time <dbl>, Arrivals_On_Time <dbl>,
## #   Departures_Delayed <dbl>, Arrivals_Delayed <dbl>, Year <dbl>,
## #   Month_Num <dbl>
```

## Challenge: 1 {.exercise}

> 2 minutes

<details>

  <summary>
    1. Exploring and familiarising yourself with the data set
  </summary>

The Bureau of Infrastructure, Transport and Regional Economics (BITRE) monitors the punctuality and reliability of major domestic airlines operating between Australian airports. The purpose of this is to allow for evaluation of overall industry and individual airline performance, so that consumers of air travel can make informed decisions.

Information presented in this report is for Australian domestic routes for which the passenger load averaged 8 000 or more passengers per month over the previous six months and where two or more airlines operated in competition on those routes.  There were 66 routes that met this definition in April 2016.  Over time, routes which meet these criteria change as airline networks and traffic levels vary.  

On time arrival - A flight arrival is counted as "on time" if it arrived at the gate before 15 minutes after the scheduled arrival time shown in the carriers' schedule.  
Neither diverted nor cancelled flights count as on time. 
On time departure - A flight departure is counted as "on time" if it departs the gate before 15 minutes after the scheduled departure time shown in the carriers' schedule.
Cancellation - A flight removed from service within 7 days of scheduled departure is regarded as a cancellation.

Participating airlines report their overall monthly network performance where this is possible. 
Total industry figures encompass all services operated by reporting airlines only.  These airlines collectively carried over 95 per cent of total domestic passengers (regular public transport only) in 2015.

The following domestic airlines currently report this information monthly to the BITRE:  Jetstar, Qantas, QantasLink, Regional Express, Tigerair Australia, Virgin Australia and Virgin Australia Regional Airlines.  Data has been gathered since November 2003, although some airlines commenced reporting at a later date, including Jetstar which first reported in May 2004, MacAir in July 2005, Tigerair Australia in April 2008 and Virgin Australia Regional Airlines in May 2013. MacAir ceased operations in February 2009 and data was not received for December 2008 onwards. Virgin Blue was rebranded as Virgin Australia in May 2011 and Tiger Airways was rebranded as Tigerair Australia in July 2013 and time series data in Microsoft Excel spread sheet format on the BITRE website have been revised to reflect these changes. Services operated by Skywest on behalf of Virgin Australia using ATR/F100 aircraft commenced in November 2011 and were shown separately as Virgin Australia 
</details>


## Exploring the data

Now that we've got the data lets explore it. It always helps if we can find more information about the data set, particular what information each column might have.

Let's understand a bit better our data set by firstly figuring out how many observations and different variables we have. Instead of executing and showing the code we instead going to keep the chunk "silent" but still executing the R code and we are going to reuse our `d` variable later in the document.


````
```{r echo = F}
d <- df %>% dim
```
````

Later in the text we'll access our `d` variable like you would in R


```
`r d[1]`
```

Lets add the following sentence to our Rmarkdown document and then `knit` to see the results.


```
total number of observation `r d[1]` and total number of variables `r d[2]`
```

Now we are going to look at total number of airlines, include the following code into your Rmarkdown document.


````
```{r echo = F}
df %>%
select(Airline) %>%
distinct() %>%
arrange(Airline)
```
````

Let's summarise our data to see how many observation each airline has.


````
```{r echo = F}
df %>%
group_by(Airline) %>%
summarise(n = n()) %>%
arrange(-n)
```
````

I hope you have noticed "All Airlines" name in the `Airline` column. I'm fairly certain that this isn't any specif airlines. In general we would need to consult people who we got the data from, but in our case we are simply going to filter those observations out.


````
```{r echo = F}
df2 <- df %>% filter(Airline != 'All Airlines'
```
````


## Challenge: 1 {.exercise}

> 5 minutes

<details>
  <summary>
    1. Can you summarise routes in similar way as we did with airlines?
  </summary>
   use `group_by(Route)`
</details>

<details>
  <summary>
    2. Can spot an odd route in you summary? If you can filter is our from `df2`.
  </summary>
   `filter(Route != "All Ports-All Ports")`
</details>

## Visualising the data

In this section we are going to learn a few more chunk options, all to do with figure manipulation.

- `fig.align`
- `fig.cap`
- `fig.height`
- `fig.width`

Firstly lets make sure we have our data properly filtered, just in case you missed the challenge above


````
```{r}
df2 <- df %>% filter(Airline != 'All Airlines', Route != 'All Ports-All Ports')
```
````

Here we are summarising so that we have an idea of how many times a particular location had be use per airline per year and we are only going to look at two airlines, Jetstar and Qantas.


````
```{r}
df2 %>%
  group_by(Airline, Year, Departing_Port) %>%
  summarise(n = n()) %>%
  ungroup %>%
  filter(Airline == 'Jetstar' | Airline == 'Qantas') %>%
    ggplot(aes(Departing_Port, n, color = Airline)) +
    geom_boxplot() +
    theme(axis.text.x=element_text(angle=45, hjust=1))
```
````

In any given year what is the distribution of cancellation

Note the `warning` message that comes up in the text, let's assume we understand it and let's just turn it off by setting `warning = F`



````
```{r, fig.width = 14, fig.height = 9}
df2 %>%
  filter(Airline == 'Jetstar' | Airline == 'Qantas') %>%
  select(Airline, Departing_Port, Cancellations, Year) %>%
    ggplot(aes(Departing_Port, Cancellations, color = factor(Year))) +
      geom_boxplot() +
      facet_wrap(~Airline) +
      theme(axis.text.x=element_text(angle= 45, hjust=1))
```
````
