library(btw2021)

spd <- manifestos2021[["SPD"]]
spd1 <- gsub("Seite\\s>\\s\\d+", " ", spd)
spd2 <- gsub("\\n\\n+SPD-Parteivorstand\\s\\d+", " ", spd1)
spd3 <- gsub("^\\s\\s+Das\\sZukunftsprogramm\\sder\\sSPD", " ", spd2)
spd4 <- gsub("-\\n", "", spd3)
spd5 <- gsub("\\n+", " ", spd4)
spd6 <- gsub("^\\s\\s+", "", spd5)
spd7 <- gsub("\\s\\s+", " ", spd6)
spd2021 <- gsub("\\s$", "", spd7)

save(spd2021, file = "data/SPD2021.RData")

