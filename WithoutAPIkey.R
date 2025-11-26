# Install packages
install.packages("ggplot2")
install.packages("readr")

# Load libraries
library(ggplot2)
library(readr)

# Read CSV
gdp_data <- read_csv("GDP.csv")

# Inspect
head(gdp_data)

# Plot
ggplot(gdp_data, aes(x = observation_date, y = GDP)) +
  geom_line(color = "hotpink") +
  labs(title = "US GDP (Quarterly)", x = "Year", y = "Billions of Dollars") +
  theme_minimal()
