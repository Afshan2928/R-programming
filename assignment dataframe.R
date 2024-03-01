#1.    Create a data frame named student_data with columns: "Name", "Age", "Grade".Add 5 rows of data to the student_data data frame.Display the structure and summary statistics of the data frame.
student_data<-data.frame(
  Name=c("John","Alice","Bob","Eva","Mike"),
  Age=c(20,22,21,23,19),
  Grade=c(85,92,78,94,88)
)
str(student_data)
summary(student_data)

#2.Extract all rows where the "Grade" is greater than 80.Create a new data frame named young_students containing only the rows where "Age" is less than 25.Display the result of both operations.
# Display the structure of the data frame
str(student_data)

# Display summary statistics of the data frame
summary(student_data)

# Extract rows where "Grade" is greater than 80
high_grade_students <- student_data[student_data$Grade > 80, ]

# Create a new data frame for students with "Age" less than 25
young_students <- student_data[student_data$Age < 25, ]

# Display the result of both operations
print("Students with Grade > 80:")
print(high_grade_students)

print("\nYoung Students (Age < 25):")
print(young_students)

#3.    Add a new column named "Gender" with values "Male" or "Female" to the student_data data frame.Remove the "Age" column from the data frame.
# Add a new column "Gender"
student_data$Gender <- c("Male", "Female", "Male", "Female", "Male")

# Display the updated data frame
print("Data frame with new 'Gender' column:")
print(student_data)

# Remove the "Age" column
student_data <- student_data[, !(names(student_data) %in% c("Age"))]

# Display the updated data frame after removing "Age" column
print("\nData frame after removing 'Age' column:")
print(student_data)

#4.Calculate the average "Grade" for each unique "Gender".Identify the student with the highest "Grade".
# Calculate the average "Grade" for each unique "Gender"
average_grade_by_gender <- aggregate(Grade ~ Gender, data = student_data, FUN = mean)

# Display the average grades by gender
print("Average Grade by Gender:")
print(average_grade_by_gender)

# Identify the student with the highest "Grade"
highest_grade_student <- student_data[which.max(student_data$Grade), ]

print("\nStudent with the Highest Grade:")
print(highest_grade_student)

#5.Create a new data frame named course_data with columns: "Name" and "Course".Merge student_data and course_data based on the "Name" column.
# Create the student_data data frame
student_data <- data.frame(
  Name = c("John", "Alice", "Bob", "Eva", "Mike"),
  Age = c(20, 22, 21, 23, 19),
  Grade = c(85, 92, 78, 94, 88),
  Gender = c("Male", "Female", "Male", "Female", "Male")
)

# Create the course_data data frame
course_data <- data.frame(
  Name = c("John", "Alice", "Bob", "Eva", "Mike"),
  Course = c("Math", "Physics", "Chemistry", "Biology", "Computer Science")
)

# Display the student_data data frame
print("Student Data:")
print(student_data)

# Display the course_data data frame
print("\nCourse Data:")
print(course_data)

# Merge based on the "Name" column
merged_data <- merge(student_data, course_data, by = "Name")

# Display the merged data frame
print("\nMerged Data:")
print(merged_data)

#6.    Extract the rows where "Grade" is between 60 and 80, and "Age" is greater than 20.Display the result.
# Extract rows where "Grade" is between 60 and 80, and "Age" is greater than 20
selected_rows <- student_data[student_data$Grade >= 60 & student_data$Grade <= 80 & student_data$Age > 20, ]

# Display the result
print("Selected Rows:")
print(selected_rows)

#7.    Identify and handle missing values in the data frame if any.Check for and remove any duplicate rows.
# Identify missing values
missing_values <- sum(is.na(student_data))
print("Missing Values:")
print(missing_values)

# Handle missing values (replace with a default value or remove rows)
# For example, replace missing values with the mean of the column
student_data[is.na(student_data$Grade), "Grade"] <- mean(student_data$Grade, na.rm = TRUE)

# Check for duplicate rows
duplicate_rows <- student_data[duplicated(student_data) | duplicated(student_data, fromLast = TRUE), ]
print("\nDuplicate Rows:")
print(duplicate_rows)

# Remove duplicate rows
student_data <- student_data[!duplicated(student_data), ]

# Display the updated data frame after handling missing values and removing duplicates
print("\nUpdated Data Frame:")
print(student_data)




