
... Laden des Pakets

```{r}
library(btw2021)
```

The data object `manifestos2021` will be available:

```{r}
length(manifestos2021)
names(manifestos2021)
```

So to access the manifesto of the AfD, for instance:

```{r}
afd <- manifestos2021[["AfD"]]
```

Or, alternatively ...

```{r}
spd <- manifestos2021[["SPD"]]
cducsu <- manifestos2021[["CDU-CSU"]]
```