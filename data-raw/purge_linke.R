library(btw2021)

linke <- manifestos2021[["LINKE"]]
linke1 <- gsub("\\s\\s+\\d+\\n", "", linke)
linke_2 <- gsub("\\n+", " ", linke1)
linke_3 <- gsub("\uf0a7", " ", linke_2)
linke_4 <- gsub("^\\s\\s+", "", linke_3)
linke2021 <- gsub("\\s\\s+", " ", linke_4)


save(linke2021, file = "data/LINKE2021.RData")
