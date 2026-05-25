library(ggplot2)
library(tidyverse)

sales_data = data.frame(
  Employee_ID = 1:20,
  Region = c("North","South","East","West","North","South","East","West",
             "North","South","East","West","North","South","East","West",
             "North","South","East","West"),
  Experience = c(1,2,3,4,2,5,3,6,4,3,5,2,6,4,3,5,7,2,6,4),
  Sales = c(200,250,300,280,220,350,330,400,310,290,
            360,240,420,370,340,390,450,260,410,300)
)

ggplot(sales_data, aes(x = Experience, y = Sales, color = Region)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Sales vs Experience by Region",
       x = "Years of Experience",
       y = "Sales Amount") +
  theme_classic()

ggplot(sales_data, aes(x = Region, y = Sales, fill = Region)) +
  geom_boxplot(alpha = 0.7) +
  labs(title = "Sales Distribution by Region",
       x = "Region",
       y = "Sales Amount") +
  theme_minimal()

ggplot(sales_data, aes(x = Sales)) +
  geom_histogram(aes(y = ..density..), fill = "steelblue", color = "black", bins = 6, alpha = 0.7) +
  geom_density(color = "red", size = 1.2) +
  labs(title = "Histogram with Density Curve of Sales",
       x = "Sales Amount",
       y = "Density") +
  theme_light()

