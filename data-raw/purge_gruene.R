library(btw2021)

gruene <- manifestos2021[["GRUENE"]]
gruene1 <- gsub("\\s\\s+\\d+\\n", "", gruene)
gruene2 <- gsub("\\n+", " ", gruene1)
gruene2021 <- gsub("\\s\\s+", "", gruene2)

save(gruene2021, file = "data/GRUENE2021.RData")
