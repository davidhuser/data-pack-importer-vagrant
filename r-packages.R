options("repos"="http://cran.rstudio.com")

install.packages("devtools")
library(devtools)
install_github(repo="jason-p-pickering/datim-validation")
install_github(repo="jason-p-pickering/data-pack-importer", ref="prod")
install_github(repo="jason-p-pickering/openxlsx", ref="26a6f60")
update.packages(ask=FALSE)
