library(btw2021)

fdp <- manifestos2021[["FDP"]]

fdp1 <- gsub("\\s\\s+\\d+\\n", "", fdp)  # entfernt seitenzahlen mit \n
fdp2 <- gsub("\\s\\s+\\d+", "", fdp1) # entfernt restliche Seitenzahlen 
fdp3 <- gsub("\\n+", " ", fdp2)
fdp2021 <- gsub("\\s\\s+", "", fdp3)

save(fdp2021, file = "data/FDP2021.RData")
