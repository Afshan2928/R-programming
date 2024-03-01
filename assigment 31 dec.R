#1
calculate_average_score <- function(dataset, subject) {
  tryCatch({
    # Check if the specified subject is present in the dataset
    if (subject %in% colnames(dataset)) {
      # Calculate the average score for the specified subject
      average_score <- mean(dataset[[subject]])
      return(average_score)
    } else {
      # If the specified subject is not present, raise a custom error
      stop(paste("Error: Subject", subject, "not found in the dataset"))
    }
  }, error = function(e) {
    # Catch and handle the error, return an error message
    return(paste("Error: ", e$message))
  })
}

# Example usage:
# Assuming 'student_scores' is your dataset
# You can replace it with your actual dataset
student_scores <- data.frame(
  StudentID = c(1, 2, 3, 4),
  Math = c(90, 85, 92, 78),
  English = c(88, 76, 80, 95),
  Science = c(75, 89, 94, 87)
)

# Test the function with existing and non-existing subjects
result_existing <- calculate_average_score(student_scores, "Math")
result_non_existing <- calculate_average_score(student_scores, "History")

print(result_existing)  # Output: [1] 86.25
print(result_non_existing)  # Output: [1] "Error: Subject History not found in the dataset"


#2. Create an ordered factor named height:
students <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Math = c(80, 90, 75, 85),
  English = c(85, 88, 92, 78),
  History = c(70, 65, 80, 88)
)
students
students$height <- cut(students$Math, breaks = c(-Inf, 80, 90, Inf), labels = c("Short", "Average", "Tall"), ordered = TRUE)
students$height

#3.
y<-7
if (y%%2==0){
  print("Even")
}else{
  print("Odd")
}

#4.
month_number<-3
month_name<-switch(month_number,"January","February","March","June", "July", "August", "September", "October", "November", "December")
print(month_name)

#5.
for(i in 1:5){
  for(j in 1:5){
    cat(i*j,"\t")
  }
  cat("\n")
}

#6.
compose <- function(f, g) {
  return(function(x) g(f(x)))
}

#7.
courses <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Course = c("Math", "English", "History", "Science"),
  age = c(21, 22, 20, 23),
  mark = c(80, 90, 75, 85)
)

#8.
set.seed(123)
my_array<-array(rnorm(2*3*4),dim=c(2,3,4))
my_array

#9.
nested_list <- list(
  list(a = 1, b = 2),
  list(x = "apple", y = "banana")
)

#10.


