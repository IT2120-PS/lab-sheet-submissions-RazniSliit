setwd("C:/Users/it24103841/Desktop/IT24103841")
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
str(branch_data)
boxplot(branch_data$Sales_X1, main = "Boxplot for Sales", ylab = "Sales")
summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- IQR(x)
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 * IQR_value
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

outliers_advertising <- find_outliers(branch_data$Advertising_X2)
outliers_advertising