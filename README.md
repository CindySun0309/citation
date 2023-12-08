
<!-- README.md is generated from README.Rmd. Please edit that file -->

# citation

<!-- badges: start -->
<!-- badges: end -->

The goal of citation is to provide users an APA citation when given a
user’s Google API and article title.

## Installation

You can install the development version of citation from
[GitHub](https://github.com/) with:

``` r
devtools::install_github("CindySun0309/citation")
#> Skipping install of 'citation' from a github remote, the SHA1 (2b4c1274) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

## Attaining a Citation

Given a Google API code and article title, the `APA()` function quickly
retrieves the APA information of an article from Google Scholar.

``` r
api_example <- readLines("example_api_k.txt")
library(citation)
example <- APA("Variation in Chinese population health related quality of life: results from a EuroQol study in Beijing, China", api_example)
example 
#> [1] "Wang, H., Kindig, D. A., & Mullahy, J. (2005). Variation in Chinese population health related quality of life: results from a EuroQol study in Beijing, China. Quality of life research, 14, 119-132."
```

## Citation Data

The metadata that comes with the citation package contains an example
data frame which has one row, an article, and columns which associate
with parts of the APA citation.

``` r
head(citation_data)
#>                                 authors year
#> 1 Wang, H., Kindig, D. A., & Mullahy, J 2005
#>                                                                                                            title
#> 1 Variation in Chinese population health related quality of life: results from a EuroQol study in Beijing, China
#>                             publication
#> 1 Quality of life research, 14, 119-132
```
