library(tidyverse)

is_passphrase <- function(x) length(x) == length(unique(x))
is_nonanagram_passphrase<- function(x)   x %>%  strsplit("") %>%  map(sort) %>%  map(paste0, collapse = "")
INPUT = readLines("./INPUT_txt.txt")
INPUT = strsplit(INPUT, "[\n ]+")    
INPUT = map(INPUT, is_nonanagram_passphrase)
this_works = map_lgl(INPUT, is_passphrase)
length(this_works[this_works==TRUE])
