if (!require("data.table")) install.packages("data.table")
library("data.table")
header <- read.table("DRFAPGACBN.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("DRFAPGACBN.csv", skip=1, sep=",",
            header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)


