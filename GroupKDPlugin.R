## ----setup_knitr, include=FALSE, cache=FALSE-------------------------------
library(knitr)
library(DRIMSeq)
library(PasillaTranscriptExpr)
library(ggplot2)

input <- function(inputfile) {
   myD <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
## ----DSdmTest1-------------------------------------------------------------
myD <<- dmTest(myD, coef = "groupKD", verbose = 1)
head(results(myD), 3)
head(results(myD, level = "feature"), 3)
saveRDS(myD, outputfile)
}

