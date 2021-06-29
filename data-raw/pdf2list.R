parties <- c("AfD", "LINKE", "FDP", "CDU-CSU", "SPD", "GRUENE")
data_raw_dir <- path.expand("~/Lab/github/btw2021/data-raw")

manifestos2021 <- lapply(
  parties,
  function(party){
    print(party)
    filename <- paste("btw2021_", party, ".pdf", sep = "")
    filename_full <- file.path(data_raw_dir, filename)
    pdftools::pdf_text(filename_full)
  }
)
names(manifestos2021) <- parties

save(
  manifestos2021,
  file = file.path("~/Lab/github/btw2021/data", "manifestos2021.RData"),
  compress = "bzip2"
)

