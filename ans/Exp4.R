data <- read.csv("Sales_Data.csv", stringsAsFactors = FALSE)

head(data)
str(data)
dim(data)

is.na(data)
total_missing <- sum(is.na(data))
print(total_missing)
colSums(is.na(data))

mean_age <- mean(data$Age, na.rm = TRUE)
data$Age[is.na(data$Age)] <- mean_age

median_purchase <- median(data$Purchase_Amt, na.rm = TRUE)
data$Purchase_Amt[is.na(data$Purchase_Amt)] <- median_purchase

before_rows <- nrow(data)
print(before_rows)

data <- data[!duplicated(data), ]

after_rows <- nrow(data)
print(after_rows)

colnames(data) <- c("Customer_ID",
                    "Customer_Name",
                    "City",
                    "Purchase_Amount",
                    "Age",
                    "Payment_Mode",
                    "Purchase_Date")

summary(data)
dim(data)
head(data)

write.csv(data, "Cleaned_Sales_Data.csv", row.names = FALSE)