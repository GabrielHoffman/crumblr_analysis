



# Analysis of Kfoury, et al. 

## 1) Download dataset 
Get H5AD from https://ghoffman-cdn.s3.us-east-2.amazonaws.com/dreamlet_analysis/data/Kfoury_CancerCell_2021.h5ad

## 2) Replace file name
Replace file name in Line 71 of `Kfoury_CancerCell_2021.Rmd` with location of your H5AD

https://github.com/GabrielHoffman/crumblr_analysis/blob/4e2f5e85ad177efb8c47b5c4706ab8d54d07114f/Kfoury_CancerCell_2021/Kfoury_CancerCell_2021.Rmd#L71

## 3) Run Rmarkdown code
`rmarkdown::render("Kfoury_CancerCell_2021.Rmd")`


