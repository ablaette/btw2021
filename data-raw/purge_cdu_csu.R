library(btw2021)

cdu_csu <- manifestos2021[["CDU-CSU"]]

cdu_csu1 <- gsub("\\n\\d+", " ", cdu_csu)
cdu_csu2 <- gsub("\\s*\\n+\\s*", " ", cdu_csu1)
cdu_csu3 <- gsub("\\s+", " ", cdu_csu2)
cdu_csu4 <- gsub("•+", " ", cdu_csu3)
cdu_csu5 <- gsub("Seite\\s+\\d+\\s[a-z]+\\s\\d+", ".", cdu_csu4)
cdu_csu6 <- gsub("\\s\\.", "", cdu_csu5) 
cdu_csu7 <- gsub(".-\\s[^u]", "", cdu_csu6)
cdu_csu8 <- gsub("^\\S\\d+\\s", "", cdu_csu7)
cdu_csu9 <- gsub("\\s$", "", cdu_csu8) 
cdu_csu2021 <- gsub("\\s\\s+", " ", cdu_csu9)

save(cdu_csu2021, file = "data/CDU_CSU2021.RData")


