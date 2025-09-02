

# Analysis of Nathan, et al. 

## 1) Download dataset 
Get reformatted H5AD from https://ghoffman-cdn.s3.us-east-2.amazonaws.com/dreamlet_analysis/data/Nathan_NatImm_2021.h5ad

## 2) Replace file name
Replace file name in Line 63 of `Nathan_NatImm_2021_crumblr.Rmd` with location of your H5AD

https://github.com/GabrielHoffman/crumblr_analysis/blob/a0338ad331a50b3a828f8fef49a098c75355c441/Nathan_NatImm_2021/Nathan_NatImm_2021_crumblr.Rmd#L63

## 3) Run Rmarkdown code
`rmarkdown::render("Nathan_NatImm_2021_crumblr.Rmd")`