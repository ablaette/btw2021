## About

This is a small R data package with the manifestos of parties competing for the 2021 federal election in Germany. The package includes a raw data format with the text extracted from the original pdf documents (using pdftools) and somewhat purged versions.

## Installation

This is a GitHub-only package install it using the remotes package.

```{r}
remotes::install_github("ablaette/btw2021")
```

Testload the package.

```{r}
library(btw2021)
```

## Using the data

Raw text extracted from the pdf documents is incluced as the data object `manifestos2021` will be available:

```{r}
length(manifestos2021)
names(manifestos2021)
```

To access the raw, unprocessed text of the manifesto of parties:

```{r}
afd <- manifestos2021[["AfD"]]
spd <- manifestos2021[["SPD"]]
cducsu <- manifestos2021[["CDU-CSU"]]
```

Purged versions of the documents are available as distinct list objects with the text:

```{r}
afd2021
cdu_csu2021
fdp2021
gruene2021
linke2021
spd2021
```

## Acknowledgements 

This package has evolved from a course on scientific programming I (Anreas Blaette) taught in the summer term 2021 at the University of Duisburg-Essen. A special thanks goes to Alexandra Naumann who has prepared the purged versions of the manifestos.