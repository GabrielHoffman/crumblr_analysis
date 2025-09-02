

# Analysis of COVID-19 severity

## 1) Download dataset 
Get H5AD from https://cellxgene.cziscience.com/collections/8f126edf-5405-4731-8374-b5ce11f53e82

## 2) Replace file name
Replace file name in Line 59 of `COVID_combat.Rmd` with location of your H5AD

https://github.com/GabrielHoffman/crumblr_analysis/blob/4e2f5e85ad177efb8c47b5c4706ab8d54d07114f/COVID_combat/COVID_combat.Rmd#L59

## 3) Run Rmarkdown code
`rmarkdown::render("COVID_combat.Rmd")`