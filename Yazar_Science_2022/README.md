

# Analysis of Yazar, et al. 

## 1) Download dataset 
Get H5AD from https://cellxgene.cziscience.com/collections/dde06e0f-ab3b-46be-96a2-a8082383c4a1

## 2) Replace file name
Replace file name in Line 62 of yazar_2022.Rmd` with location of your H5AD

https://github.com/GabrielHoffman/crumblr_analysis/blob/a0338ad331a50b3a828f8fef49a098c75355c441/Yazar_Science_2022/yazar_2022.Rmd#L62

## 3) Run Rmarkdown code
`rmarkdown::render("yazar_2022.Rmd")`