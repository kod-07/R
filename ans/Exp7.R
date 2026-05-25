spending <- c(
  200,250,300,150,400,500,350,300,450,600,700,650,800,900,
  750,850,950,1000,1100,1200,300,320,310,305,290,280,275,
  260,255,240
)
# Mean
mean(spending)

# Median
median(spending)

# Mode
mode_spending <- as.numeric(names(sort(table(spending), decreasing = TRUE)[1]))
mode_spending
sd(spending)
skewness(spending)
kurtosis(spending)
