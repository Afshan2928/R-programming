# Create a data frame with the provided data
csv_data <- data.frame(
  customer_id = c(1, 2, 3, 4, 5, 6),
  order_id = c(1001, 1002, 1003, 1004, 1005, 1006),
  product = c("Product A", "Product B", "Product C", "Product A", "Product B", "Product C"),
  quantity = c(2, 1, 3, 1, 2, 1),
  price = c(10.50, 15.75, 8.99, 10.50, 15.75, 8.99),
  date = c("2024-02-10", "2024-02-11", "2024-02-12", "2024-02-12", "2024-02-13", "2024-02-14")
)

# Write the data frame to a CSV file
write.csv(csv_data, "customer_orders.csv", row.names = FALSE)

# Load the jsonlite package
library(jsonlite)

# Create a list of transactions
json_data <- list(
  transactions = list(
    list(customer_id = 1, order_id = 1001, product = "Product A", quantity = 2, price = 10.50, date = "2024-02-10"),
    list(customer_id = 2, order_id = 1002, product = "Product B", quantity = 1, price = 15.75, date = "2024-02-11"),
    list(customer_id = 3, order_id = 1003, product = "Product C", quantity = 3, price = 8.99, date = "2024-02-12"),
    list(customer_id = 4, order_id = 1004, product = "Product A", quantity = 1, price = 10.50, date = "2024-02-12"),
    list(customer_id = 5, order_id = 1005, product = "Product B", quantity = 2, price = 15.75, date = "2024-02-13"),
    list(customer_id = 6, order_id = 1006, product = "Product C", quantity = 1, price = 8.99, date = "2024-02-14")
  )
)

# Write the JSON data to a file
writeLines(toJSON(json_data), "customer_orders.json")


# Load necessary packages
