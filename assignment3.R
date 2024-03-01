my_string="Hello, R"
my_string
concatenated_string <- paste("Data", "Analysis")
concatenated_string
# Substring Extraction:
substring_extracted <- substr("R programming", start = 3, stop = 14)
substring_extracted

strg_char<-nchar("DataScience123")
strg_char

upper_case<-toupper("lowercase")
upper_case

str1<-"apple"
str2<-"orange"
print(str1==str2)

are_equal<-identical("apple","orange")
are_equal

split_string <- strsplit("Data,Analysis,Machine,Learning", ",")[[1]]
split_string

# Replacing Substrings:
replaced_string <- gsub("red", "blue", "The red car is faster than the red balloon.")
replaced_string

is_present <- grepl("programming", "I love programming in R.")
is_present

name <- "John"
age <- 25
formatted_string <- sprintf("My name is %s, and I am %d years old.", name, age)
formatted_string

my_matrix<-matrix(1:9,nrow=3,ncol=3)
my_matrix

element_second_row_third_col <- my_matrix[2, 3]
element_second_row_third_col

new_array <- my_matrix + 5
new_array

dimensions<-dim(new_array)
dimensions

my_vector <- c(10, 20, 30)

# Use my_vector to replace the second column of my_matrix.
my_vector<-my_matrix[, 2]
my_vector

reshaped_vector <- as.vector(my_matrix)
reshaped_vector
mean_value <- mean(my_matrix)
std_deviation <- sd(my_matrix)
mean_value
std_deviation

subset_matrix <- my_matrix[, c(1, 3)]
subset.matrix

comparison_matrix <- my_matrix == 7
comparison_matrix

# Concatenate my_matrix with its transpose to create a new square matrix.
concatenated_matrix <- cbind(my_matrix, t(my_matrix))
concatenated_matrix