# Install package (if not already installed)
install.packages("rdbnomics")

# Load library
library(rdbnomics)

# Use the full DBnomics series ID
gdp_pc <- rdb(ids = "Eurostat/NAMA_10_PC/A.CLV10_EUR_HAB.B1GQ.AL")

head(gdp_pc)

plot(
  gdp_pc$period, gdp_pc$value,
  type = "l",
  main = "Eurostat – GDP per capita (chain-linked volumes)",
  xlab = "Year",
  ylab = "Value"
)
