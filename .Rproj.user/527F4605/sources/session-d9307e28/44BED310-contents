# PACKAGES
install.packages("fredr")
install.packages("ggplot2")

library(fredr)
library(ggplot2)

# MY FRED API KEY
fredr_set_key("e8eb2e0f7c9a792f34df7a72d8288529")

# GDP data
gdp <- fredr(series_id = "GDP")

# Define series id and time window
series_id <- "GDP"
end_date   <- Sys.Date()
start_date <- as.Date(end_date) - (5*365)

# Fetching specific data
gdp_data <- fredr(
  series_id        = series_id,
  observation_start = start_date,
  observation_end   = end_date
)

# Inspect
head(gdp_data)

# Visualize w/ ggplot2
ggplot(gdp_data, aes(x = date, y = value)) +
  geom_line(color = "hotpink", size = 2) +
  labs(title = "US GDP (Quarterly) – Last 5 Years",
       x     = "Date",
       y     = "Billions of Dollars (SAAR)") +
  theme_minimal()

