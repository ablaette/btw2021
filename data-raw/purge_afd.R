library(btw2021)

afd <- manifestos2021[["AfD"]]
afd <- afd[12:length(afd)]
afd2 <- gsub("^\\s+\\d{1,3}\\s+.*?\\n{4}", "", afd)
afd2 <- gsub("^\\s+.*?\\s+\\d{1,3}\\n{4}", "", afd2)
afd3 <- gsub("(.*?)-\\n\\s*([a-zäüö])", "\\1\\2", afd2)
afd3 <- gsub("\\s*\\n+\\s*", " ", afd3)
afd3 <- gsub("\\s+", " ", afd3)
afd2021 <- gsub("^\\s*(.*?)\\s*$", "\\1", afd3)

save(afd2021, file = "~/Lab/github/btw2021/data/AfD2021.RData")
